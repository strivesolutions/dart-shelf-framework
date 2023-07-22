# Contribution Guide

## Guidelines

1. All code must be formatted using `dart format .`.
2. All code must pass `dart analyze`. This means zero warnings and zero errors.
3. All public APIs must be unit tested.
4. All code must pass `dart test`.
5. All code must be documented using `dartdoc`. Meaning all public classes, methods, and properties must be documented.
   1. To generate API documentation run `dart doc --output=docs .`

## Requesting a Feature

1. Create an [issue](https://github.com/strivesolutions/dart-shelf-framework/issues/new) with the `enhancement` label.
2. Provide a detailed description of the feature you would like to see added.
3. Provide a detailed description of the use case for the feature.

## Reporting a Bug

1. Create an [issue](https://github.com/strivesolutions/dart-shelf-framework/issues/new) with the `bug` label.
2. Provide a detailed description of the bug.
3. Provide a detailed description of the steps to reproduce the bug.
4. Provide a detailed description of the expected behavior.

## Submitting a Pull Request

1. Create a [fork](https://github.com/strivesolutions/dart-shelf-framework/fork) of this repository.
2. Create a branch in your fork.
3. Make your changes in your branch.
4. Create a pull request from your branch to the `develop` branch of this repository.
5. Address any feedback provided by the maintainers.
6. Once your pull request is approved, it will be merged into the `develop` branch.
7. Once the `develop` branch is ready for release, it will be merged into the `main` branch.

- All pull requests must be made against the `develop` branch.
- All pull requests must be made from a branch in your fork.
- A pull requests must pass all checks before it will be merged.
