import 'dart:io';

import 'package:dart_shelf_framework/dart_shelf_framework.dart';
import 'package:dart_shelf_framework/src/server/type_definitions.dart';
import 'package:shelf/shelf.dart' as shelf;
import 'package:shelf/shelf_io.dart';

/// Fluent API for building a server.
final class ServerBuilder {
  final int port;
  final InternetAddress address;
  final List<Middleware> middlewares = [];
  final List<ApiMixin> apis = [];
  bool autoCompressContent = false;
  Logger? logger;

  ServerBuilder({required this.port, required this.address});

  /// Adds a request logger to the server.
  /// Prints the time of the request, the elapsed time for the inner handlers,
  /// the response's status code and the request URI.
  /// Adding a custom logger allows you to customize the message written to stdout.
  ServerBuilder addRequestLogger(Logger logger) {
    this.logger = logger;
    return this;
  }

  /// Adds a middleware to the server.
  ServerBuilder addMiddleware(Middleware middleware) {
    middlewares.add(middleware);
    return this;
  }

  /// Adds a list of middlewares to the server.
  ServerBuilder addMiddlewares(Iterable<Middleware> middlewares) {
    this.middlewares.addAll(middlewares);
    return this;
  }

  /// Adds a CORS configuration to the server.
  ServerBuilder cors(CorsConfig config) {
    middlewares.add(config.toMiddleware());
    return this;
  }

  /// Adds an API to the server.
  ServerBuilder addApi(ApiMixin api) {
    apis.add(api);
    return this;
  }

  /// Adds a list of APIs to the server.
  ServerBuilder addApis(Iterable<ApiMixin> apis) {
    this.apis.addAll(apis);
    return this;
  }

  /// Enables content compression for the server.
  ServerBuilder enableContentCompression() {
    autoCompressContent = true;
    return this;
  }

  /// Starts the server.
  Future<HttpServer> start() async {
    final router = RouterFactory.create(apis);
    final pipeline = _configurePipelineMiddleware(middlewares, logger);
    final requestHandler = pipeline.addHandler(router);
    final server = await serve(requestHandler, address, port);

    if (autoCompressContent) {
      server.autoCompress = autoCompressContent;
    }

    print('Server listening on port ${server.port}');

    return server;
  }

  shelf.Pipeline _configurePipelineMiddleware(
      List<Middleware> middlewares, Logger? logger) {
    final pipeline = shelf.Pipeline();

    for (final middleware in middlewares) {
      pipeline.addMiddleware(middleware);
    }

    pipeline.addMiddleware(shelf.logRequests(logger: logger));

    return pipeline;
  }
}
