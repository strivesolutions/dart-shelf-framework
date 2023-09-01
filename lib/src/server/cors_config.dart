import 'package:shelf/shelf.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart';

/// Configuration for CORS Middleware
final class CorsConfig {
  /// Allowed headers
  final Map<String, String>? headers;

  /// Checker to determine if the origin is allowed
  final OriginChecker? originChecker;

  CorsConfig({this.headers, this.originChecker});

  /// Returns a [Middleware] for CORS
  Middleware toMiddleware() {
    return corsHeaders(
      headers: headers,
      originChecker: originChecker ?? originAllowAll,
    );
  }
}
