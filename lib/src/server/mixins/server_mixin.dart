import 'dart:async';

import 'package:shelf/shelf.dart';

/// Mixin for [Server]
mixin ServerMixin {
  /// [List] of [Middleware] to run before the request is handled
  List<
      FutureOr<Response> Function(Request) Function(
          FutureOr<Response> Function(Request))>? get middlewares;
}
