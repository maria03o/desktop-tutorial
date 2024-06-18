import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:email_validator/email_validator.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tro/Authentification/loginOrsignup.dart';
import 'package:tro/Authentification/signin.dart';
import 'package:tro/Componants/Passwordfield.dart';
import 'package:tro/Componants/textfiled.dart';
import 'package:tro/constants/Size.dart';
import 'package:tro/services/Authservice.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isselected = false;
  TextEditingController phonecntrlr = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordValid = true;
  bool visibleIcon = true;
  Icon passwordIcon = Icon(Icons.visibility_off);
  bool _isEmailValid = true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => loginOrsignup()),
              );
            },
          ),
          title: const Text('Login'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "Phone"),
              Tab(text: "Email/password"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: [
                  gapH32,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: IntlPhoneField(
                      controller: phonecntrlr,
                      cursorColor: Color.fromARGB(255, 0, 0, 0),
                      style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        fillColor: Color.fromARGB(255, 0, 0, 0),
                        labelText: "Phone number",
                        border: OutlineInputBorder(borderSide: BorderSide()),
                      ),
                    ),
                  ),
                  gapH12,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: sigin(
                      onTap: siginmethod,
                      btntext: "Get code",
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                gapH32,
                SizedBox(
                  width: 310,
                  child: TextFormField(
                    cursorColor: Colors.black,
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      errorText: _isEmailValid ? null : 'Enter a valid email address',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                      labelStyle: TextStyle(color: Colors.black),
                      fillColor: Color.fromARGB(255, 165, 165, 165),
                    ),
                    onChanged: _validateEmail,
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: 310,
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: visibleIcon,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      errorText: _isPasswordValid ? null : '8 characters including number and special char',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        color: Colors.black,
                        onPressed: () {
                          setState(() {
                            visibleIcon = !visibleIcon;
                            passwordIcon = visibleIcon
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility);
                          });
                        },
                        icon: passwordIcon,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                    onChanged: _validatePassword,
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: sigin(
                    onTap: _login,
                    btntext: "Logffffffin",
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void siginmethod() {}

  void _validateEmail(String value) {
    setState(() {
      _isEmailValid = EmailValidator.validate(value);
    });
  }

  bool _isStrongPassword(String value) {
    return value.length >= 8 &&
        RegExp(r'[a-z]').hasMatch(value) &&
        RegExp(r'[0-9]').hasMatch(value) &&
        RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value);
  }

  void _validatePassword(String value) {
    setState(() {
      _isPasswordValid = _isStrongPassword(value);
    });
  }

  void _login() async {
  if (_formKey.currentState?.validate() ?? false) {
    _formKey.currentState?.save();
    final response = await _authenticateUser(
      emailController.text,
      _passwordController.text,
    );
    print(response); // Add this line for debugging
    if (response != null && response['token'] != null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login successful')));
      // Navigate to the next page or save the token
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login failed')));
    }
  }
}

  Future<Map<String, dynamic>?> _authenticateUser(String email, String password) async {
    final url = Uri.parse('http://192.168.100.53:8000/api/login/');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return null;
    }
  }
}
