import 'package:dart_shelf_framework/src/api/mixins/api_error_mixin.dart';

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

  factory ApiError.fromJson(Map<String, dynamic> json) {
    return ApiError(
      message: json['message'],
      path: json['path'],
      statusCode: json['status_code'],
      detail: json['detail'],
    );
  }
}
