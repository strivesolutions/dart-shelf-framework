import 'package:dart_shelf_framework/dart_shelf_framework.dart';
import 'package:dart_shelf_framework/src/api/mixins/api_route_mixin.dart';
import 'package:shelf/src/request.dart';
import 'package:shelf/src/response.dart';

final class MockRoute with ApiRouteMixin {
  @override
  String getPath({String? prefix}) => '${prefix ?? ''}/mock';

  @override
  Future<Response> handler(Request request) async {
    return ok(ApiResponse());
  }

  @override
  HttpMethod get verb => HttpMethod.get;
}
