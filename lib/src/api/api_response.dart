import 'package:dart_shelf_framework/src/api/mixins/api_error_mixin.dart';
import 'package:dart_shelf_framework/src/api/mixins/api_response_mixin.dart';

/// The return value for all API routes
/// [data] is the data to return to the client
/// [error] is the error to return to the client (Optional)
class ApiResponse with ApiResponseMixin {
  /// Data to return to the client
  @override
  final dynamic data;

  /// Error to return to the client (Optional)
  @override
  final ApiErrorMixin? error;

  ApiResponse({
    this.data,
    this.error,
  });
}
