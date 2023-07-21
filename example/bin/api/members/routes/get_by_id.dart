import 'package:dart_shelf_framework/dart_shelf_framework.dart';
import 'package:dart_shelf_framework/src/api/mixins/api_route_mixin.dart';
import 'package:shelf/src/request.dart';
import 'package:shelf/src/response.dart';
import 'package:shelf_router/shelf_router.dart';
import '../../data/example_data.dart';

final class GetById with ApiRouteMixin {
  @override
  String getPath({String prefix = ''}) => '$prefix/<id>';

  @override
  Future<Response> handler(Request request) async {
    final id = request.params['id'];

    final member = ExampleDB.members.firstWhere((m) => m.id == id);

    return ok(
      ApiResponse(
        data: member.toJson(),
      ),
    );
  }

  @override
  HttpMethod get verb => HttpMethod.get;
}
