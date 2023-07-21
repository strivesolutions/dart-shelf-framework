import 'dart:convert';

import 'package:dart_shelf_framework/dart_shelf_framework.dart';
import 'package:dart_shelf_framework/src/api/mixins/api_route_mixin.dart';
import 'package:dart_shelf_framework/src/serialization/serialization_extensions.dart';
import 'package:shelf/src/request.dart';
import 'package:shelf/src/response.dart';
import '../../../domain/member.dart';
import '../../data/example_data.dart';

final class Create with ApiRouteMixin {
  @override
  String getPath({String prefix = ''}) => prefix;

  @override
  Future<Response> handler(Request request) async {
    final body = await request.readAsString();
    final newMember = Member.fromJson(jsonDecode(body));

    ExampleDB.members.add(newMember);

    return ok(
      ApiResponse(
        data: ExampleDB.members.toJson(),
      ),
    );
  }

  @override
  HttpMethod get verb => HttpMethod.post;
}
