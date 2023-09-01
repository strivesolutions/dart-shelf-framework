import 'package:dart_shelf_framework/dart_shelf_framework.dart';

import 'bad_request.dart';
import 'not_found_request.dart';

final class ErrorsApi with ApiMixin {
  final BadRequest _badRequest;
  final NotFoundRequest _notFoundRequest;
  ErrorsApi(this._badRequest, this._notFoundRequest);

  @override
  String get prefix => '/errors';

  @override
  List<ApiRouteMixin> get routes => [_badRequest, _notFoundRequest];
}
