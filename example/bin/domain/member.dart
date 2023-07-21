import 'package:dart_shelf_framework/src/serialization/serializable.dart';

final class Member implements Serializable {
  final String id;
  final String name;
  final String email;

  Member({required this.id, required this.name, required this.email});

  factory Member.fromJson(Map<String, dynamic> json) {
    return Member(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
      };
}
