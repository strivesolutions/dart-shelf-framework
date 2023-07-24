import 'package:dart_shelf_framework/src/api/mixins/api_mixin.dart';
import 'package:shelf_router/shelf_router.dart';

/// Factory to create a Shelf [Router] from a list of [ApiMixin] apis.
abstract final class RouterFactory {
  /// Creates a Shelf [Router] from a list of [ApiMixin] apis. If [apiVersionPrefix] is
  /// provided, it will be prepended to all routes.
  static Router create(List<ApiMixin> apis, {String apiVersionPrefix = ''}) {
    final router = Router();

    for (final api in apis) {
      for (final route in api.routes) {
        router.add(route.verb.value,
            '$apiVersionPrefix${api.prefix}${route.path}', route.handler);
      }
    }
    return router;
  }
}
