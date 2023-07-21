import 'package:dart_shelf_framework/src/api/mixins/api_mixin.dart';
import 'package:shelf_router/shelf_router.dart';

abstract final class RouterFactory {
  static Router create(List<ApiMixin> apis, {String apiPrefix = ''}) {
    final router = Router();

    for (final api in apis) {
      for (final route in api.routes) {
        router.add(route.verb.value,
            '$apiPrefix${route.getPath(prefix: api.prefix)}', route.handler);
      }
    }
    return router;
  }
}
