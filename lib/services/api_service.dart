import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user_model.dart';

class ApiService {
  static Future<UserModel> loginUser(String username, String password, String apiKey) async {
      var response = await http.put(
        Uri.parse('http://app360dev-001-site14.atempurl.com/api/v2/Auth/SignIn'),
        headers: {
          'Content-Type': 'application/json',
          'CustomToken': apiKey,
        },
        body: jsonEncode({
          'userName': username,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        var jsonResponse = json.decode(response.body);
        return UserModel.fromJson(jsonResponse);
      } else {
        throw Exception('Failed to load user data');
      }

  }
}

