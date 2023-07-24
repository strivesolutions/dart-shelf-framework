import 'dart:convert';
import 'dart:io';

import 'package:dart_shelf_framework/src/api/api_error.dart';
import 'package:dart_shelf_framework/src/api/mixins/api_response_mixin.dart';
import 'package:shelf/shelf.dart';

import '../http_method.dart';

/// Mixin for ApiRoute
mixin ApiRouteMixin {
  /// HTTP Verb
  HttpMethod get verb;

  /// Path of the route
  String get path;

  /// Handler of the route
  Future<Response> handler(Request request);

  /// Returns a [Response] with the [ApiResponseMixin] as body
  /// and the Content-Type header set to application/json
  /// with a status code of 200 OK
  Response ok(ApiResponseMixin response) =>
      Response.ok(jsonEncode(response.toJson()),
          headers: {'Content-Type': 'application/json'});

  /// Returns a [Response] with the [ApiResponseMixin] as body
  /// and the Content-Type header set to application/json
  /// with a status code of 500 Internal Server Error
  Response internalServerError(ApiResponseMixin data) {
    return Response.internalServerError(
      body: jsonEncode(jsonEncode(data.toJson())),
      headers: {'Content-Type': 'application/json'},
    );
  }

  /// Returns a [Response] with the [ApiResponseMixin] as body
  /// and the Content-Type header set to application/json
  /// with a status code of 404 Not Found
  Response notFound({ApiResponseMixin? data}) {
    return Response.notFound(
      jsonEncode(
        jsonEncode(data?.toJson() ??
            ApiError(
              message: 'NOT FOUND',
              path: path,
              statusCode: HttpStatus.notFound,
              detail: 'NOT FOUND',
            ).toJson()),
      ),
      headers: {'Content-Type': 'application/json'},
    );
  }

  /// Returns a [Response] with the [ApiResponseMixin] as body
  /// and the Content-Type header set to application/json
  /// with a status code of 400 Bad Request
  Response badRequest({ApiResponseMixin? data}) {
    return Response.badRequest(
      body: jsonEncode(data?.toJson() ??
          ApiError(
            message: 'BAD REQUEST',
            path: path,
            statusCode: HttpStatus.badRequest,
            detail: 'BAD REQUEST',
          ).toJson()),
      headers: {'Content-Type': 'application/json'},
    );
  }

  /// Returns a [Response] with the [ApiResponseMixin] as body
  /// and the Content-Type header set to application/json
  /// with a status code of 403 Forbidden
  Response forbidden({ApiResponseMixin? data}) {
    return Response.forbidden(
      jsonEncode(data?.toJson() ??
          ApiError(
            message: 'FORBIDDEN',
            path: path,
            statusCode: HttpStatus.forbidden,
            detail: 'FORBIDDEN',
          ).toJson()),
      headers: {'Content-Type': 'application/json'},
    );
  }

  /// Returns a [Response] with the [ApiResponseMixin] as body
  /// and the Content-Type header set to application/json
  /// with a status code of 401 Unauthorized
  Response unauthorized({ApiResponseMixin? data}) {
    return Response.unauthorized(
      jsonEncode(data?.toJson() ??
          ApiError(
            message: 'UNAUTHORIZED',
            path: path,
            statusCode: HttpStatus.unauthorized,
            detail: 'UNAUTHORIZED',
          ).toJson()),
      headers: {'Content-Type': 'application/json'},
    );
  }

  /// Returns a [Response] with the [ApiResponseMixin] as body
  /// and the Content-Type header set to application/json
  /// with a status code of 409 Conflict
  Response conflict({ApiResponseMixin? data}) {
    return Response(HttpStatus.conflict,
        body: jsonEncode(data?.toJson() ??
            ApiError(
              message: 'CONFLICT',
              path: path,
              statusCode: HttpStatus.conflict,
              detail: 'CONFLICT',
            ).toJson()),
        headers: {'Content-Type': 'application/json'});
  }

  /// Returns a [Response] with the [ApiResponseMixin] as body
  /// and the Content-Type header set to application/json
  /// with a status code of 303 See Other
  Response seeOther(String location, {ApiResponseMixin? data}) {
    return Response.seeOther(location,
        body: jsonEncode(data?.toJson() ??
            ApiError(
              message: 'SEE OTHER (REDIRECT)',
              path: path,
              statusCode: HttpStatus.seeOther,
              detail: 'New Location: $location',
            ).toJson()),
        headers: {'Content-Type': 'application/json'});
  }

  /// Returns a [Response] with the [ApiResponseMixin] as body
  /// and the Content-Type header set to application/json
  /// with a status code of 301 Moved Permanently
  Response movedPermanently(String location, {ApiResponseMixin? data}) {
    return Response.movedPermanently(location,
        body: jsonEncode(data?.toJson() ??
            ApiError(
              message: 'MOVED PERMANENTLY (REDIRECT)',
              path: path,
              statusCode: HttpStatus.movedPermanently,
              detail: 'New Location: $location',
            ).toJson()),
        headers: {'Content-Type': 'application/json'});
  }
}
