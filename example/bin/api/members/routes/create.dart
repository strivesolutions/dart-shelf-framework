import 'dart:convert';

import 'package:dart_shelf_framework/dart_shelf_framework.dart';
import 'package:shelf/src/request.dart';
import 'package:shelf/src/response.dart';
import '../../../domain/member.dart';
import '../../data/example_data.dart';

final class Create with ApiRouteMixin {
  @override
  String get path => '';

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
