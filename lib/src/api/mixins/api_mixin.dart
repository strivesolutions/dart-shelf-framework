import 'api_route_mixin.dart';

mixin ApiMixin {
  String get prefix;

  List<ApiRouteMixin> get routes;
}
