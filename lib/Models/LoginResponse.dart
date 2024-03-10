import 'dart:convert';

class LoginResponse {
  final String token;
  final String userName;
  final String email;
  final String fullName;

  LoginResponse(
      {required this.token,
      required this.userName,
      required this.email,
      required this.fullName});

  factory LoginResponse.fromJson(String body) {
    
    final json = jsonDecode(body);

    return LoginResponse(
        token: json['token'],
        userName: json['userName'],
        email: json['email'],
        fullName: json['fullName']);
  }
}
