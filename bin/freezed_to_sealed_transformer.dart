import 'dart:io';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';

import 'package:analyzer/dart/ast/token.dart';
import 'documentation_preserver.dart';

class FreezedToSealedTransformer {
  void transform(List<String> args) {
    if (args.isEmpty) {
      print(
        'Usage: dart bin/freezed_to_sealed_transformer.dart <input_file.dart>',
      );
      exit(1);
    }

    final inputFile = File(args[0]);
    final content = inputFile.readAsStringSync();
    final result = parseString(content: content);
    final unit = result.unit;

    for (final node in unit.declarations) {
      if (node is ClassDeclaration &&
          node.metadata.any((m) => m.name.name == 'freezed')) {
        final converted = _convertFreezedToSealed(node);
        final outputFile = File('${args[0]}_sealed.dart');
        outputFile.writeAsStringSync(converted);
        print('Converted file saved to ${outputFile.path}');
      }
    }
  }

  String _convertFreezedToSealed(ClassDeclaration node) {
    final buffer = StringBuffer();
    final topLevelClassName = node.name;

    // Preserve documentation
    DocumentationPreserver.preserveFrom(node.documentationComment, buffer);

    // write out top level sealed class
    buffer.writeln('sealed class $topLevelClassName {}');

    for (final member in node.members) {
      if (member is ConstructorDeclaration && member.factoryKeyword != null) {
        _convertFactories(member, buffer, topLevelClassName);
      }
    }

    return buffer.toString();
  }

  /// Process factories into their own classes which extend [topLevelClassName]
  ///
  /// Like so class [class_name] extends [topLevelClassName]
  ///
  void _convertFactories(
    ConstructorDeclaration constructor,
    StringBuffer buffer,
    Token topLevelClassName,
  ) {
    // Preserve any docs
    DocumentationPreserver.preserveFrom(
      constructor.documentationComment,
      buffer,
    );

    buffer.writeln('class ${constructor.name} extends $topLevelClassName {');

    if (constructor.parameters.parameters.isNotEmpty) {
      for (FormalParameter parameter in constructor.parameters.parameters) {
        if (parameter.isRequiredNamed) {
          buffer.writeln(
            'final ${((parameter as DefaultFormalParameter).parameter as SimpleFormalParameter).type ?? ''} ${parameter.name}; ',
          );
        } else {
          buffer.writeln(
            'final ${(parameter as SimpleFormalParameter).type ?? ''} ${parameter.name}; ',
          );
        }
      }

      final positionalParams =
          constructor.parameters.parameters
              .where((param) => !param.isNamed)
              .toList();
      final namedParams =
          constructor.parameters.parameters
              .where((param) => param.isNamed)
              .toList();

      buffer.writeln('${constructor.name}(');

      // 1. Write positional params (if any)
      if (positionalParams.isNotEmpty) {
        for (final param in positionalParams) {
          buffer.write('this.${param.name}');
          if (param != positionalParams.last || namedParams.isNotEmpty) {
            buffer.write(', ');
          }
        }
      }

      // 2. Write named params (if any, wrapped in {})
      if (namedParams.isNotEmpty) {
        buffer.write('{');
        for (final param in namedParams) {
          if (param.isRequiredNamed) {
            buffer.write('required this.${param.name}');
          } else {
            buffer.write('this.${param.name}');
          }
          if (param != namedParams.last) {
            buffer.write(', ');
          }
        }
        buffer.write('}');
      }

      buffer.writeln(');');
    }
    buffer.writeln('}');
  }
}
