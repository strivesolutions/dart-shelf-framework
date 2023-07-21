import 'package:dart_shelf_framework/src/api/mixins/api_error_mixin.dart';
import 'package:dart_shelf_framework/src/serialization/serializable.dart';
import 'package:dart_shelf_framework/src/api/type_definitions.dart';

mixin ApiResponseMixin {
  dynamic get data;
  ApiErrorMixin? get error;

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
