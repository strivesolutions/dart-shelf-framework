import 'package:dart_shelf_framework/src/api/type_definitions.dart';

/// Mixin for [ApiError]
mixin ApiErrorMixin {
  /// User Friendly message
  String get message;

  /// Path of the request
  String get path;

  /// Status code of the response
  int get statusCode;

  /// Detail of the error
  String get detail;

  /// Converts the [ApiErrorMixin] to [Json]
  Json toJson() {
    return {
      'message': message,
      'path': path,
      'status_code': statusCode,
      'detail': detail,
    };
  }
}
