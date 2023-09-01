import 'package:dart_shelf_framework/dart_shelf_framework.dart';
import 'package:shelf/src/request.dart';
import 'package:shelf/src/response.dart';

/// See [ApiRouteMixin] for more information on how to handle errors.
/// This is an example of how to issue a 404 Not Found Request response.
final class NotFoundRequest with ApiRouteMixin {
  @override
  String get path => '/not-found-request';

  @override
  Future<Response> handler(Request request) async {
    return notFound();
  }

  @override
  HttpMethod get verb => HttpMethod.get;
}
