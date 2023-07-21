Example application using the dart-shelf-framework

# Running the sample

## Running with the Dart SDK

You can run the example with the [Dart SDK](https://dart.dev/get-dart)
like this:

```
$ dart run bin/server.dart
Server listening on port 8080
```

If you have access to curl, then from a second terminal:

```
$ curl http://0.0.0.0:8080/members
$ curl http://0.0.0.0:8080/members/1

$ curl http://0.0.0.0:8080/errors/bad-request
```
