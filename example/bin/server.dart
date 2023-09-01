import 'dart:io';

import 'package:dart_shelf_framework/dart_shelf_framework.dart';

import 'api/errors/bad_request.dart';
import 'api/errors/errors_api.dart';
import 'api/errors/not_found_request.dart';
import 'api/logs/request_logger.dart';
import 'api/members/members_api.dart';
import 'api/members/routes/create.dart';
import 'api/members/routes/get_all.dart';
import 'api/members/routes/get_by_id.dart';

void main(List<String> args) async {
  // Use any available host or container IP (usually `0.0.0.0`).
  final ip = InternetAddress.anyIPv4;

  // For running in containers, we respect the PORT environment variable.
  final port = int.parse(Platform.environment['PORT'] ?? '8080');

  // In a real app, you would use a dependency injection framework to get instances of your APIs.
  final apis = [
    MembersApi(
      GetAll(),
      Create(),
      GetById(),
    ),
    ErrorsApi(BadRequest(), NotFoundRequest())
  ];

  // Optional Cors Configuration.
  final corsConfig = CorsConfig();

  // Optional Request Logger.
  final requestLogger = RequestLogger();

  await ServerBuilder(port: port, address: ip)
      .addRequestLogger(requestLogger.log)
      .addApis(apis)
      .cors(corsConfig)
      .enableContentCompression()
      .start();

  // Can use tools such as Postman or Insomnia to test the API.
  // GET http://localhost:8080/members
}
