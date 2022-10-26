import 'dart:convert';

class User {
  final String id;
  final String name;
  final String password;
  final String token;
  User({this.id, this.name, this.password, this.token});
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'password': password,
      'token': token,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
        id: map['_id'] ?? '',
        name: map['name'] ?? '',
        password: map['password'] ?? '',
        token: map['token'] ?? '');
  }
  String toJson() => json.encode(toMap());
  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
