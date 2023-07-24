import 'package:dart_shelf_framework/dart_shelf_framework.dart';

import 'bad_request.dart';

final class ErrorsApi with ApiMixin {
  final BadRequest _badRequest;
  ErrorsApi(this._badRequest);

  @override
  String get prefix => '/errors';

  @override
  List<ApiRouteMixin> get routes => [_badRequest];
}
