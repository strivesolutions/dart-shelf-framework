import 'package:dart_shelf_framework/dart_shelf_framework.dart';
import 'package:shelf/src/request.dart';
import 'package:shelf/src/response.dart';

/// See [ApiRouteMixin] for more information on how to handle errors.
/// This is an example of how to issue a 400 Bad Request response.
final class BadRequest with ApiRouteMixin {
  @override
  String getPath({String prefix = ''}) => '$prefix/bad-request';

  @override
  Future<Response> handler(Request request) async {
    return badRequest();
  }

  @override
  HttpMethod get verb => HttpMethod.get;
}
