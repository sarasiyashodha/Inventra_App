class UserModel {
  final String userName;
  final String name;
  final String password;
  final List<Map<String, dynamic>> routes;

  UserModel({
    required this.userName,
    required this.name,
    required this.password,
    required this.routes,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userName: json['content']['userDetails']['userName'],
      name: json['content']['userDetails']['name'],
      password: json['content']['userDetails']['password'],
      routes: List<Map<String, dynamic>>.from(json['content']['routes']),
    );
  }
}
