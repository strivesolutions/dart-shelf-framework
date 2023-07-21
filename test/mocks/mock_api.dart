import 'package:dart_shelf_framework/dart_shelf_framework.dart';
import 'package:dart_shelf_framework/src/api/mixins/api_route_mixin.dart';

final class MockApi with ApiMixin {
  @override
  String get prefix => '/mock';

  @override
  List<ApiRouteMixin> get routes => [];
}
