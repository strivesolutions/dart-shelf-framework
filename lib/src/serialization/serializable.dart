import 'package:dart_shelf_framework/src/api/type_definitions.dart';

/// Interface for serializable classes.
abstract interface class Serializable {
  Json toJson();
}
