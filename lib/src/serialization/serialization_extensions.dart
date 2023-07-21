import 'package:dart_shelf_framework/src/api/type_definitions.dart';
import 'package:dart_shelf_framework/src/serialization/serializable.dart';

/// Extension for [Serializable]
extension SerializableListExtensions on List<Serializable> {
  /// Converts a list of [Serializable] to [Json]
  List<Json> toJson() => map((e) => e.toJson()).toList();
}
