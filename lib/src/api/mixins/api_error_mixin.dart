import 'package:dart_shelf_framework/src/api/type_definitions.dart';

mixin ApiErrorMixin {
  String get message;
  String get path;
  int get statusCode;
  String get detail;

  Json toJson() {
    return {
      'message': message,
      'path': path,
      'status_code': statusCode,
      'detail': detail,
    };
  }
}
