import 'dart:convert';

import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:loan_app/Models/LoginResponse.dart';

class SecurityApi {
  var baseUrl;

  SecurityApi({required this.baseUrl});

  Future<LoginResponse> postLogin(String userName, String password) async {
    var response = await http.post(
      Uri.parse('$baseUrl/api/Login'),
      body:
          jsonEncode(<String, String>{'email': userName, 'password': password}),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    final loginResponse = LoginResponse.fromJson(response.body);

    return loginResponse;
  }
}
