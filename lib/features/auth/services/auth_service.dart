import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:task_04/features/auth/models/signup-request_model.dart';
import '../models/auth_response_model.dart';

class AuthService {
  static const String baseUrl = 'https://task-management-nu-wheat-23.vercel.app/api/v1';

  Future<AuthResponseModel> signUp(SignupRequestModel model) async {
    final url = Uri.parse('$baseUrl/auth/signup'); // Postman-এর Sign Up path মিলিয়ে নিন

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(model.toJson()),
    );

    print('SignUp Status: ${response.statusCode}');
    print('SignUp Body: ${response.body}');

    try {
      final Map<String, dynamic> data = jsonDecode(response.body);
      return AuthResponseModel.fromJson(data);
    } catch (_) {
      return AuthResponseModel(
        success: false,
        message: 'Invalid server response (${response.statusCode}): ${response.body}',
      );
    }
  }

  Future<AuthResponseModel> signIn({
    required String gmail,
    required String password,
  }) async {
    final url = Uri.parse('$baseUrl/auth/signin');

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'gmail': gmail,
        'password': password,
      }),
    );

    print('SignIn Status: ${response.statusCode}');
    print('SignIn Body: ${response.body}');

    try {
      final Map<String, dynamic> data = jsonDecode(response.body);
      return AuthResponseModel.fromJson(data);
    } catch (_) {
      return AuthResponseModel(
        success: false,
        message: 'Invalid server response (${response.statusCode}): ${response.body}',
      );
    }
  }
}