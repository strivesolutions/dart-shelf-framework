import 'package:dart_shelf_framework/src/serialization/serializable.dart';

extension SerializableListExtensions on List<Serializable> {
  List<Map<String, dynamic>> toJson() => map((e) => e.toJson()).toList();
}
