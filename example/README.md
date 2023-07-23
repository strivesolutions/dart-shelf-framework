Example application using the dart-shelf-framework

# Running the sample

## Running with the Dart SDK

You can run the example with the [Dart SDK](https://dart.dev/get-dart)

Ensure you are in the `example` directory:

### Terminal

```dart

$ dart run bin/server.dart

```

If you have access to curl, then from a second terminal:

```
$ curl http://0.0.0.0:8080/members
$ curl http://0.0.0.0:8080/members/1
$ curl http://0.0.0.0:8080/errors/bad-request
```

Otherwise you can use your favourite API testing tool (e.g. Postman, Insomnia, etc.)
