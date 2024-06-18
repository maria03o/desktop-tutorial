import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tro/modules/client.dart';
import 'package:tro/modules/agency.dart';
import 'package:tro/modules/guide.dart';
import 'package:tro/constants/Size.dart';  // Import your constants file

class ApiService {
    
   final String baseUrl = 'http://192.168.100.53:8000/api';
  Future<http.Response> registerClient(Client client) async {
     var response = await http.post(
      Uri.parse('$baseUrl/signup/client/'),
      headers: {'Content-Type': 'application/json'},
      body: 
      jsonEncode(client.toJson()),
    );
    if (response.statusCode == 201) {
      // Client registered successfully
    } else {
      // Handle error
      
    Map<String, dynamic> responseData = jsonDecode(response.body);
      print('Error: ${response.statusCode}');
      print('Body: ${response.body}');
    }
     return response ;
  }
    

  Future<void> registerAgency(Agency agency) async {
    final response = await http.post(
      Uri.parse('$baseUrl/signup/agency/'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(agency.toJson()),
    );

    if (response.statusCode == 201) {
      // Agency registered successfully
    } else {
      // Handle error
      print('Error: ${response.statusCode}');
      print('Body: ${response.body}');
    }
  }

  Future<void> registerGuide(Guide guide) async {
    final response = await http.post(
      Uri.parse('$baseUrl/signup/guide/'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(guide.toJson()),
    );

    if (response.statusCode == 201) {
      // Guide registered successfully
    } else {
      // Handle error
      print('Error: ${response.statusCode}');
      print('Body: ${response.body}');
    }
  }


}





 