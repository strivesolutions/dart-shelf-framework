## 0.2.4

- Add option to only import specific parts/features of this library. Such as only importing api related features, or only importing server related features. Left the option to import everything as well. This was to reduce the chances that types in this library would conflict with other libraries that may be used in a project.

## 0.2.3

- Fix for double serialization on some error responses. Resulted in invalid JSON being returned.

## 0.2.2

- Fix for middleware not being properly added to the pipeline

## 0.2.1

- Fix for not being able to set a path prefix for each route. (ie) /api/v1

## 0.2.0

- **BREAKING CHANGE** - Changed how the `path` field is implemented when using `ApiRouteMixin`;
  - This was to simplify implementing new routes and to reduce duplication of code.

## 0.1.4

- Fix for missing library exports

## 0.1.3

- Fix Getting Started section in ReadMe. Provided incorrect instructions for adding the dependency to a project.

## 0.1.2

- Fix CI Badge on ReadMe
- Updated version and Generated docs

## 0.1.1

- Initial architecture
- Fix Pre-Release Workflow

## 0.1.0

- Initial version.
