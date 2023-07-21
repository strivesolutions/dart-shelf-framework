import '../../domain/member.dart';

abstract final class ExampleDB {
  static List<Member> members = [
    Member(id: '1', name: 'John Doe', email: 'john@doe.com'),
    Member(id: '2', name: 'Jane Doe', email: 'jane@doe.com'),
  ];
}
