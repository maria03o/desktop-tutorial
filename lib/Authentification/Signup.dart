
import 'package:flutter/material.dart';
import 'package:tro/Authentification/LOginChoice.dart';
import 'package:tro/Componants/CheckBox.dart';
import 'package:tro/Componants/SquaretTile.dart';
import 'package:tro/Componants/Passwordfield.dart';
import 'package:tro/Authentification/loginOrsignup.dart';
import 'package:tro/Authentification/signin.dart';
import 'package:tro/Componants/textfiled.dart';
import 'package:tro/constants/Size.dart';
import 'package:tro/modules/client.dart';
import 'package:tro/navigateur.dart';
import 'package:tro/services/Authservice.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:email_validator/email_validator.dart'; 

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
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isEmailValid = true;
  bool _isPasswordValid = true;
  bool visibleIcon =  true;
  Icon passwordIcon = Icon(Icons.visibility_off);
   final FocusNode _focusNode = FocusNode();
  bool _isFirstNameValid = true;


  final _authService = AuthService();
 bool isSelected = false;
  final Uri privacyPolicyUrl = Uri.parse("https://pub.dev/packages/url_launcher/install");

  Future<void> launchPrivacyPolicy() async {
    try {
      await launchUrl(privacyPolicyUrl);
    } catch (err) {
      // Handle error if necessary
    }
  }
 @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        // When the TextField loses focus, validate the content
        setState(() {
          _isFirstNameValid = firstnamecntr.text.isNotEmpty;
        });
      }
    });
  }

  @override
  void dispose() {
    firstnamecntr.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
       final RouteSettings settings = ModalRoute.of(context)!.settings;
    final String fromPage = settings.arguments as String;

    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
              if (fromPage == '/pageTwo') {
              Navigator.pushReplacementNamed(context, '/pageTwo');
            } else if (fromPage == '/pageThree') {
              Navigator.pushReplacementNamed(context, '/pageThree');
            }else if (fromPage == '/pageFour') {
              Navigator.pushReplacementNamed(context, '/pageFour');
            }
          },
        ),),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: SingleChildScrollView(
          
            child: Form(
              key: _formKey,
              child: Column(
               
                children: [
                  const SizedBox(height: 50),
                  Text(
                    "Hello!",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 50,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Welcome back ',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Create your account ',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       SizedBox(
                        width: 120,
                        child: TextField(
                         
                          cursorColor: Colors.black,
                          controller: firstnamecntr,decoration: InputDecoration(labelText: 'first name  ',
                          labelStyle: TextStyle(color:Colors.black),
                           errorText: _isFirstNameValid ? null : 'Please fill in this field',
                      
                        //  errorText: firstnamecntr.text.isNotEmpty ?null : 'please fill in ',
                        
                           enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black, // Set the color of the enabled bottom border
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black, // Set the color of the focused bottom border
          width: 2.0,
        ),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red, // Set the color of the error bottom border
        ),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red, // Set the color of the focused error bottom border
          width: 2.0,
          
        ),
        
      ),),)),
                         SizedBox(
                          
                        width: 120,
                        child: TextField(
                          cursorColor: Colors.black,
                          controller:  lastnamecntr,decoration: InputDecoration(labelText: 'last name ',
                            labelStyle: TextStyle(color:Colors.black),
                        
                           enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black, // Set the color of the enabled bottom border
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black, // Set the color of the focused bottom border
          width: 2.0,
        ),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red, // Set the color of the error bottom border
        ),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red, // Set the color of the focused error bottom border
          width: 2.0,
          
        ),
        
      ),),))
                   
                    ],
                  ),
                  SizedBox(height: 15),
                 SizedBox(
                  width: 310,
                   child: TextField(
                    cursorColor: Colors.black,
                                 controller: _emailController,
                                 decoration: InputDecoration(
                                   labelText: 'Email',
                                   errorText: _isEmailValid ? null : 'Enter a valid email address',
                                   enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black, // Set the color of the enabled bottom border
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black, // Set the color of the focused bottom border
          width: 2.0,
        ),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red, // Set the color of the error bottom border
        ),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red, // Set the color of the focused error bottom border
          width: 2.0,
          
        ),
        
      ),
      labelStyle: TextStyle(color:Colors.black),
    
      fillColor: Color.fromARGB(255, 165, 165, 165),
                                 ),
                                 onChanged: _validateEmail,
                               ),
                 ),
                  
                  SizedBox(height: 15),
               SizedBox(
                width: 310,
                 child: TextField(
                               controller: _passwordController,
                               obscureText:visibleIcon ? true : false,
                               decoration: InputDecoration(
                  labelText: 'Password',
                  errorText: _isPasswordValid ? null : '8 charachter including number and speacial char',
                               prefixIcon: Icon(Icons.lock)  ,
                               suffixIcon:IconButton(
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
          color: Colors.black, // Set the color of the enabled bottom border
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black, // Set the color of the focused bottom border
          width: 2.0,
        ),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red, // Set the color of the error bottom border
        ),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red, // Set the color of the focused error bottom border
          width: 2.0,
          
        ),
        
      ),
      labelStyle: TextStyle(color:Colors.black), ),
                               
                               
                               onChanged: _validatePassword,
                             ),
               ),
                  SizedBox(height: 15),

                   SizedBox(
                width: 310,
                 child: TextField(
                  cursorColor: Colors.black,
                               controller: pwdcntr2 ,
                               obscureText: true,
                               decoration: InputDecoration(
                  labelText: 'Password',
                  errorText:  pwdcntr2.text == _passwordController.text ? null : 'password dont match',
                               prefixIcon: Icon(Icons.lock)  ,
                               suffixIcon:IconButton(
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
          color: Colors.black, // Set the color of the enabled bottom border
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black, // Set the color of the focused bottom border
          width: 2.0,
        ),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red, // Set the color of the error bottom border
        ),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red, // Set the color of the focused error bottom border
          width: 2.0,
          
        ),
        
      ),
      labelStyle: TextStyle(color:Colors.black),
            // Use the hint text from the widget
        ),
                               
                             
                             ),
               ),
               gapH14,
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
                
                SizedBox(
                  width: 340,
                  height: 60,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = true;
                       
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: 
                                Color.fromARGB(255, 218, 218, 218), // Change border color when selected
                            width: 2), // Increase border width when selected
                       
                        
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          gapW12,
                          Icon(Icons.apple),
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Continue with apple  ",
                            style: const TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
             gapH16,
              SizedBox(
                  width: 340,
                  height: 60,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = true;
                       
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color:  // Change color when selected
                            Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: 
                               Color.fromARGB(255, 218, 218, 218), // Change border color when selected
                            width: 2), // Increase border width when selected
                       
                        
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //gapW12,
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset(
                              "lib/photos/kisspng-computer-icons-google-pay-send-google-5b2c7faaee9f23.0947772515296429229774-removebg-preview.png",
                              height: 50,
                              width: 40,
                            )),
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            " continue with Google ",
                            style: const TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Have an account  ? ",
                        style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => loginOrsignup()),
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
    );
  }
void _validateEmail(String value) {
    setState(() {
      _isEmailValid = EmailValidator.validate(value);
    });
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
   bool _isStrongPassword(String value) {
    // Add your password strength validation logic here
    // Example: Minimum length of 8, must contain uppercase, lowercase, number, and special character
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
}
