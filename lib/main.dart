import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tro/Authentification/LOginChoice.dart';
import 'package:tro/Authentification/Login.dart';
import 'package:tro/Authentification/Phone_Auth_First_Page.dart';
import 'package:tro/Authentification/Signup.dart';
import 'package:tro/Authentification/loginOrsignup.dart';
import 'package:tro/intro_screens/introductionscreen.dart';
import 'package:tro/navigateur.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       // colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 55, 91, 222)),
        useMaterial3: true,
      ),
      home:        loginOrsignup()
    );
  }
}


