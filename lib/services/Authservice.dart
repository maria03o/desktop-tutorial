import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tro/modules/client.dart';

class AuthService {
  final String baseUrl = 'http://192.168.100.53:8000/api';

  Future<http.Response> signup(Client client) async {
    final response = await http.post(
      Uri.parse('$baseUrl/signup/'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(client.toJson()),
    );
    return response;
  }

  Future<http.Response> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login/'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );
    return response;
  }
}