import 'package:dart_shelf_framework/dart_shelf_framework.dart';
import 'package:dart_shelf_framework/src/api/mixins/api_route_mixin.dart';
import 'package:dart_shelf_framework/src/serialization/serialization_extensions.dart';
import 'package:shelf/src/request.dart';
import 'package:shelf/src/response.dart';
import '../../data/example_data.dart';

final class GetAll with ApiRouteMixin {
  @override
  String getPath({String prefix = ''}) => prefix;

  @override
  Future<Response> handler(Request request) async {
    return ok(
      ApiResponse(
        data: ExampleDB.members.toJson(),
      ),
    );
  }

  @override
  HttpMethod get verb => HttpMethod.get;
}
