import 'package:dart_shelf_framework/src/api/mixins/api_error_mixin.dart';
import 'package:dart_shelf_framework/src/api/type_definitions.dart';

mixin ApiResponseMixin {
  Json? get data;
  ApiErrorMixin? get error;

  Json toJson() {
    return {
      'data': data,
      'error': error?.toJson(),
    };
  }
}
