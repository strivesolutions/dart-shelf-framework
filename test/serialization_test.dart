import 'package:dart_shelf_framework/src/api/api_error.dart';
import 'package:dart_shelf_framework/src/api/api_response.dart';
import 'package:test/test.dart';

void main() {
  group('ApiResponse Serialization Tests', () {
    final response = ApiResponse();

    test('Json contains data and error', () {
      expect(response.toJson().keys, containsAll(['data', 'error']));
    });

    test('Json contains exactly two keys', () {
      expect(response.toJson().keys.length, equals(2));
    });
  });

  group('ApiError Serialization Tests', () {
    final error = ApiError(detail: 'detail', message: 'message', path: 'path', statusCode: 400);

    test('Json contains message, path, statusCode and detail', () {
      expect(error.toJson().keys, containsAll(['message', 'path', 'status_code', 'detail']));
    });

    test('Json contains exactly four keys', () {
      expect(error.toJson().keys.length, equals(4));
    });
  });
}
