import 'dart:async';
import 'dart:io';

import 'package:dart_shelf_framework/src/server/cors_config.dart';
import 'package:dart_shelf_framework/src/server/server.dart';
import 'package:shelf/shelf.dart';
import 'package:test/test.dart';

import 'mocks/mock_api.dart';

void main() {
  group('Server Builder Tests', () {
    late ServerBuilder server;

    setUp(() {
      server = ServerBuilder(port: 8080, address: InternetAddress.loopbackIPv4);
    });

    test('Calling addMiddleware adds Middleware to collection', () {
      FutureOr<Response> Function(Request) middleware(handler) => (request) => handler(request);

      server.addMiddleware(middleware);
      expect(server.middlewares, isNotEmpty);
    });

    test('Calling addMiddlewares adds Middlewares to collection', () {
      FutureOr<Response> Function(Request) middleware(handler) => (request) => handler(request);

      server.addMiddlewares([middleware]);
      expect(server.middlewares, isNotEmpty);
    });

    test('Calling addApi adds Api to collection', () {
      server.addApi(MockApi());
      expect(server.apis, isNotEmpty);
    });

    test('Calling addApis adds Apis to collection', () {
      server.addApis([MockApi()]);
      expect(server.apis, isNotEmpty);
    });

    test('Calling cors adds CorsConfig to middlewares', () {
      server.cors(CorsConfig());
      expect(server.middlewares, isNotEmpty);
    });
  });
}
