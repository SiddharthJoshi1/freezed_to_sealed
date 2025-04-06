import 'package:analyzer/dart/ast/ast.dart';

/// Handles preservation of documentation comments during code transformation.
///
/// Responsible for maintaining original documentation from source AST nodes
/// in generated output files.
class DocumentationPreserver {
  /// Preserves documentation comments from a given AST node
  ///
  /// [node]: The AST node containing potential documentation comments
  ///
  /// [buffer]: The StringBuffer to write preserved documentation to
  static void preserveFrom(Comment? comment, StringBuffer buffer) {
    if(comment != null) buffer.writeln(comment.toSource());
  }
}
