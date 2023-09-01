import 'dart:async';
import 'package:shelf/shelf.dart';

/// Type definitions for the server.
typedef RequestHandler = FutureOr<Response> Function(Request);

typedef Logger = void Function(String message, bool isError);
