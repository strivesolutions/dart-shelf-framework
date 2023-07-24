import 'package:dart_shelf_framework/dart_shelf_framework.dart';
import 'package:test/test.dart';

import 'mocks/mock_route.dart';

void main() {
  group('ApiRouteMixinTests', () {
    late MockRoute route;
    final ApiResponse response = ApiResponse();

    setUp(() {
      route = MockRoute();
    });

    test('Calling getPath returns path', () {
      expect(route.path, equals('/mock'));
    });

    test('Response ok returns 200', () {
      expect(route.ok(response).statusCode, equals(200));
    });

    test('Response conflict returns 409', () {
      expect(route.conflict().statusCode, equals(409));
    });

    test('Response badRequest returns 400', () {
      expect(route.badRequest().statusCode, equals(400));
    });

    test('Response unauthorized returns 401', () {
      expect(route.unauthorized().statusCode, equals(401));
    });

    test('Response forbidden returns 403', () {
      expect(route.forbidden().statusCode, equals(403));
    });

    test('Response notFound returns 404', () {
      expect(route.notFound().statusCode, equals(404));
    });

    test('Response internalServerError returns 500', () {
      expect(route.internalServerError(response).statusCode, equals(500));
    });
  });
}
