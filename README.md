# Workouter

Workouter mobile app with Flutter.
Too lazy to write proper full readme for now. Follow below links to get started.

## Getting Started

Branch out from `dev` for any development.

Totally new to flutter? Get started [here](https://docs.flutter.dev/get-started/install)

[Flutter Docs](https://docs.flutter.dev/)

## Flutter Version Manager (FVM)

The project supports [FVM](https://fvm.app) to ensure all developers are using the same Flutter version. Install and configure FVM, then run `fvm install` in the project root directory. You will need to reload your IDE for the change to take effect.

## Code generation

This project uses `build_runner` for code generation. Generated code is not checked in to source control, so you'll need to run the code generator locally to ensure you stay up-to-date.

You can either run code generation once:

```sh
dart run build_runner build
```

Or you can use `watch` to automatically run code generation whenever you save a file:

```sh
dart run build_runner watch
```

## Widgetbook

The project includes [Widgetbook](https://widgetbook.io), which allows us to preview widgets in isolation for development and UI testing.

It is recommended to run Widgetbook in macOS or Chrome.

## Translations

- To add text to an application, put a key-value pair in a file lib/lang/en.json and run:

```sh
flutter pub run easy_localization:generate --source-dir lib/lang -O lib/lang/gen
```

- And after that run:

```sh
flutter pub run easy_localization:generate -f keys --source-dir lib/lang -O lib/lang/gen -o locale_keys.g.dart
```

- And use in code:

```sh
LocaleKeys.you_new_key.tr();
```

- Generate models:

```sh
flutter packages pub run build_runner build --delete-conflicting-outputs
```
