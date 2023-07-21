import 'package:dart_shelf_framework/dart_shelf_framework.dart';
import 'package:dart_shelf_framework/src/api/mixins/api_route_mixin.dart';

import 'routes/create.dart';
import 'routes/get_all.dart';
import 'routes/get_by_id.dart';

final class MembersApi with ApiMixin {
  final GetAll _getAll;
  final Create _create;
  final GetById _getById;
  MembersApi(this._getAll, this._create, this._getById);

  @override
  String get prefix => '/members';

  @override
  List<ApiRouteMixin> get routes => [_getAll, _create, _getById];
}
