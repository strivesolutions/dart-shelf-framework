import 'api_route_mixin.dart';

/// Mixin for [Api]
mixin ApiMixin {
  /// Prefix for all routes
  String get prefix;

  /// List of all routes that belong to this API
  List<ApiRouteMixin> get routes;
}
