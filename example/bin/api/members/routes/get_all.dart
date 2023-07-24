import 'package:dart_shelf_framework/dart_shelf_framework.dart';
import 'package:shelf/src/request.dart';
import 'package:shelf/src/response.dart';
import '../../data/example_data.dart';

final class GetAll with ApiRouteMixin {
  @override
  String get path => '';

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
