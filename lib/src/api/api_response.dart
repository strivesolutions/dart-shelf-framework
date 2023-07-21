import 'package:dart_shelf_framework/src/api/mixins/api_error_mixin.dart';
import 'package:dart_shelf_framework/src/api/mixins/api_response_mixin.dart';
import 'package:dart_shelf_framework/src/api/type_definitions.dart';

class ApiResponse with ApiResponseMixin {
  /// Data to return to the client
  @override
  final Json? data;

  /// Error to return to the client (Optional)
  @override
  final ApiErrorMixin? error;

  ApiResponse({
    this.data,
    this.error,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      data: json['data'],
      error: json['error'],
    );
  }
}
