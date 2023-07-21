import 'dart:async';
import 'package:shelf/shelf.dart';

/// Type definitions for the server.
typedef Middleware = FutureOr<Response> Function(Request) Function(
    FutureOr<Response> Function(Request));

typedef RequestHandler = FutureOr<Response> Function(Request);

typedef Logger = void Function(String message, bool isError);
