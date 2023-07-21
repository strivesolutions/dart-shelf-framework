import 'package:dart_shelf_framework/src/api/mixins/api_error_mixin.dart';
import 'package:dart_shelf_framework/src/serialization/serializable.dart';
import 'package:dart_shelf_framework/src/api/type_definitions.dart';

/// Mixin for [ApiResponse]
mixin ApiResponseMixin {
  /// Data to return to the client
  dynamic get data;

  /// Error to return to the client (Optional). See [ApiErrorMixin]
  ApiErrorMixin? get error;

  /// Converts the [ApiResponseMixin] to [Json]
  Json toJson() {
    return {
      'data': switch (data) {
        Serializable => (data as Serializable).toJson(),
        _ => data,
      },
      'error': error?.toJson(),
    };
  }
}
