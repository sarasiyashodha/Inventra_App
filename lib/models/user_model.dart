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
      userName: json['content']['userDetails']['userName'] ?? '', // Handle null with default value ''
      name: json['content']['userDetails']['name'] ?? '', // Handle null with default value ''
      password: json['content']['userDetails']['password'] ?? '', // Handle null with default value ''
      routes: List<Map<String, dynamic>>.from(json['content']['routes'] ?? []
      ),
    );
  }
}
