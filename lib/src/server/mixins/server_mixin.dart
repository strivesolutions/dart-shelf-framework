import 'dart:async';

import 'package:shelf/shelf.dart';

mixin ServerMixin {
  List<
      FutureOr<Response> Function(Request) Function(
          FutureOr<Response> Function(Request))>? get middlewares;
}
