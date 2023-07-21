import 'dart:io';

import 'package:dart_shelf_framework/dart_shelf_framework.dart';
import 'package:dart_shelf_framework/src/server/cors_config.dart';
import 'package:dart_shelf_framework/src/server/type_definitions.dart';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf/shelf_io.dart';

final class ServerBuilder {
  final int port;
  final InternetAddress address;
  final List<Middleware> middlewares = [];
  final List<ApiMixin> apis = [];

  ServerBuilder({required this.port, required this.address});

  ServerBuilder addLogger(Logger logger) {
    middlewares.add(shelf.logRequests(logger: logger));
    return this;
  }

  ServerBuilder addMiddleware(Middleware middleware) {
    middlewares.add(middleware);
    return this;
  }

  ServerBuilder addMiddlewares(Iterable<Middleware> middlewares) {
    this.middlewares.addAll(middlewares);
    return this;
  }

  ServerBuilder cors(CorsConfig config) {
    middlewares.add(config.toMiddleware());
    return this;
  }

  ServerBuilder addApi(ApiMixin api) {
    apis.add(api);
    return this;
  }

  ServerBuilder addApis(Iterable<ApiMixin> apis) {
    this.apis.addAll(apis);
    return this;
  }

  Future<HttpServer> start() {
    final router = RouterFactory.create(apis);
    final pipeline = shelf.Pipeline();

    for (final middleware in middlewares) {
      pipeline.addMiddleware(middleware);
    }

    final requestHandler = pipeline.addHandler(router);

    return serve(requestHandler, address, port);
  }
}
