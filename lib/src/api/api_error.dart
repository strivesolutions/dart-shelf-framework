import 'package:dart_shelf_framework/dart_shelf_framework.dart';
import 'package:dart_shelf_framework/src/api/mixins/api_error_mixin.dart';

/// Used to return errors to the client
/// [message] is a user friendly, external facing message
/// [path] is the path of the request
/// [statusCode] is the status code of the response
/// [detail] is the detail of the error for internal use
class ApiError with ApiErrorMixin {
  /// User Friendly message
  @override
  final String message;

  /// Path of the request
  @override
  final String path;

  /// Status code of the response
  @override
  final int statusCode;

  /// Detail of the error
  @override
  final String detail;

  ApiError({
    required this.message,
    required this.path,
    required this.statusCode,
    required this.detail,
  });

  /// Converts [Json] to an [ApiError]
  factory ApiError.fromJson(Json json) {
    return ApiError(
      message: json['message'],
      path: json['path'],
      statusCode: json['status_code'],
      detail: json['detail'],
    );
  }
}
