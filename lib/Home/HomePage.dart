import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan_app/Api/HolidayApi.dart';
import 'package:loan_app/Api/SecurityApi.dart';
import 'package:loan_app/Models/Country.dart';
import 'package:loan_app/Shared/TopSceenImage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  TextEditingController userNameController=TextEditingController();

  TextEditingController passwordController=TextEditingController();

  onLogin() {
    var security = SecurityApi(baseUrl: 'https://localhost:7161');

    security.postLogin(userNameController.text,passwordController.text).then((value) {
      debugPrint(value.token);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TopScreenImage(),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextFormField(
                  controller: userNameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text('Username')),
                )),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text('Password')),
                  obscureText: true,
                )),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: (() {
                    onLogin();
                  }),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
