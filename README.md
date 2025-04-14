# freezed_to_sealed

A command-line utility to automatically convert Dart classes annotated with `@freezed` into equivalent structures using Dart 3's native `sealed` classes.

## Overview

The `freezed_to_sealed` tool helps migrate codebases away from the `freezed` package dependency for union types and state management patterns towards the built-in Dart `sealed` class feature.

## How it Works

1.  **Parsing:** Takes one or more Dart file paths as input and reads the first specified file.
2.  **AST Analysis:** Uses the `analyzer` package to parse the Dart code into an Abstract Syntax Tree (AST).
3.  **Detection:** Traverses the AST to find top-level class declarations with the `@freezed` annotation.
4.  **Transformation:** For each `@freezed` class found:
    *   Creates a new `sealed class` with the same name.
    *   Preserves documentation comments from the original class and applies them to the new `sealed` class.
    *   Transforms each factory constructor (e.g., `factory User.loading()`, `factory User.data(String name)`) into a separate, concrete class (e.g., `class Loading extends User`, `class Data extends User`) that extends the generated `sealed` class.
    *   Copies parameters (types, names, required status) from factory constructors to the new concrete class constructors and corresponding `final` fields.
    *   Preserves documentation comments from factory constructors and applies them to the corresponding new classes.
5.  **Output:** Writes the generated `sealed` class and its subclasses to a new file named `<input_file_name>_sealed.dart` (e.g., `user.dart` becomes `user.dart_sealed.dart`).

## Usage

```bash
dart run freezed_to_sealed <input_file.dart> [flags]
```

**Arguments:**

*   `<input_file.dart>`: (Required) The path to the Dart file containing the `@freezed` class(es) to convert. Currently, only the first file path provided is processed.

**Flags:**

*   `--help`, `-h`: Print usage information and exit.
*   `--version`: Print the tool's version number and exit.
*   `--verbose`, `-v`: Show additional command output, including the full list of arguments passed.

## Example

Given `home_state.dart`:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

/// Represents the state of the home screen.
@freezed
sealed class HomeState with _$HomeState {
  /// Initial loading state.
  const factory HomeState.loading() = _Loading;

  /// State when data is successfully loaded.
  const factory HomeState.data({required String message}) = _Data;

  /// State when an error occurs.
  const factory HomeState.error({String? errorMessage}) = _Error;
}
```

Running the tool:

```bash
dart run freezed_to_sealed bin/example_freezed_classes/cubit/home_state.dart
```

Will generate `bin/example_freezed_classes/cubit/home_state.dart_sealed.dart` with:

```dart
/// Represents the state of the home screen.
sealed class HomeState {}

/// Initial loading state.
class Loading extends HomeState {
  Loading();
}

/// State when data is successfully loaded.
class Data extends HomeState {
  final String message;
  Data({
    required this.message,
  });
}

/// State when an error occurs.
class Error extends HomeState {
  final String? errorMessage;
  Error({
    this.errorMessage,
  });
}
```

## Dependencies

*   `args`: For parsing command-line arguments.
*   `analyzer`: For parsing and analyzing Dart source code.