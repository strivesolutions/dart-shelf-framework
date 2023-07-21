# Dart Shelf Framework

![CI Status](https://github.com/strivesolutions/dart-shelf-framework/.github/workflows/ci.yml/badge.svg)
![License](https://img.shields.io/badge/license-MIT-blue.svg)

[API Documentation](https://strivesolutions.github.io/dart-shelf-framework/)

## Development Requirements

1. Dart SDK >= 3.0.0
   1. [Install Dart](https://dart.dev/get-dart)
2. VS Code >= 1.44.0
   1. [Install VS Code](https://code.visualstudio.com/download)
   2. Install the Dart VS Code extension
      1. Open VS Code
      2. Click the Extensions icon in the Activity Bar
      3. Search for Dart
      4. Click Install
   3. Install the dart-import extension
      1. Open VS Code
      2. Click the Extensions icon in the Activity Bar
      3. Search for dart-import
      4. Click Install

## Features

1. Opinionated framework for building web server applications using Dart.
2. Built on top of [shelf](https://pub.dev/packages/shelf) and
   [shelf_router](https://pub.dev/packages/shelf_router).
3. Provides a simple and intuitive way to define routes and handlers.
4. Provides a simple and intuitive way to define middleware.
5. Provides a simple and intuitive way to define error handlers.
6. Provides a fluent API for building and starting the server.

## Getting Started

To use this package in your project, in your `pubspec.yaml` file, add the following dependency:

```yaml
dependencies:
  dart-shelf-framework:
    git:
      url: https://github.com/strivesolutions/dart-shelf-framework.git
      ref: main
```

## Usage

See the [example](example) directory for a complete sample app using the Dart Shelf Framework.

## Contributing

If you wish to contribute a change to this repo, please review our [contribution guide](CONTRIBUTING.md).
