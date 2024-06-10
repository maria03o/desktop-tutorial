
import 'package:flutter/material.dart';
import 'package:tro/Componants/CheckBox.dart';
import 'package:tro/Componants/SquaretTile.dart';
import 'package:tro/Componants/Passwordfield.dart';
import 'package:tro/Authentification/login.dart';
import 'package:tro/Authentification/signin.dart';
import 'package:tro/Componants/textfiled.dart';
import 'package:tro/modules/client.dart';
import 'package:tro/navigateur.dart';
import 'package:tro/services/Authservice.dart';
import 'package:url_launcher/url_launcher.dart';

class SignupPage extends StatefulWidget {
  SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();

  final firstnamecntr = TextEditingController();
  final lastnamecntr = TextEditingController();
  final emailController = TextEditingController();
  final pwdcntr = TextEditingController();
  final pwdcntr2 = TextEditingController();

  final _authService = AuthService();

  final Uri privacyPolicyUrl = Uri.parse("https://pub.dev/packages/url_launcher/install");

  Future<void> launchPrivacyPolicy() async {
    try {
      await launchUrl(privacyPolicyUrl);
    } catch (err) {
      // Handle error if necessary
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  Text(
                    "Hello!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Welcome back ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Create your account ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      SizedBox(
                        width: 195,
                        child: textfiled(
                          controller: firstnamecntr,
                          hintext: '     First Name',
                          obscuretext: false,
                        ),
                      ),
                      SizedBox(
                        width: 195,
                        child: textfiled(
                          controller: lastnamecntr,
                          hintext: '    Last Name ',
                          obscuretext: false,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  textfiled(
                    controller: emailController,
                    hintext: ' Enter Email ',
                    obscuretext: false,
                  ),
                  SizedBox(height: 15),
                  PasswordField(passwordcntr: pwdcntr),
                  SizedBox(height: 15),
                  PasswordField(
                    hintText: "Confirm your password ",
                    passwordcntr: pwdcntr2,
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(width: 12),
                      CheckboxExample(),
                      Text(
                        "I agree with ",
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      ),
                      InkWell(
                        child: Text(
                          "Privacy Policy",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            fontSize: 16),
                        ),
                        onTap: () {
                          launchPrivacyPolicy();
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  sigin(
                    onTap: _signup,
                    btntext: "Sign in ",
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Text(
                          'Or continue with ',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SquareTile(imagepath: 'lib/photos/google.png'),
                      const SizedBox(width: 15),
                      SquareTile(
                        imagepath: 'lib/photos/kisspng-apple-iphone-5af7d926427d25.7954913915261924222724.png',
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Have an account  ? ",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => loginPage()),
                          );
                        },
                        child: Text(
                          "Log in  ",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _signup() async {
    // Debug prints
    print('Form key: $_formKey');
    print('First name controller: ${firstnamecntr.text}');
    print('Last name controller: ${lastnamecntr.text}');
    print('Email controller: ${emailController.text}');
    print('Password controller: ${pwdcntr.text}');
    print('Confirm Password controller: ${pwdcntr2.text}');

    if (_formKey.currentState!.validate()) {
      Client client = Client(
        firstName: firstnamecntr.text,
        lastName: lastnamecntr.text,
        email: emailController.text,
        password: pwdcntr.text,
      );

      final response = await _authService.signup(client);
      if (response.statusCode == 201) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Signup successful')),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeWrapper()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Signup failed')),
        );
      }
    }
  }
}
