import 'package:dart_shelf_framework/src/server/type_definitions.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart';

final class CorsConfig {
  final Map<String, String>? headers;
  final OriginChecker? originChecker;

  CorsConfig({this.headers, this.originChecker});

  Middleware toMiddleware() {
    return corsHeaders(
      headers: headers,
      originChecker: originChecker ?? originAllowAll,
    );
  }
}
