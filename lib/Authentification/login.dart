import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tro/Authentification/loginOrsignup.dart';
import 'package:tro/Authentification/signin.dart';
import 'package:tro/Componants/Passwordfield.dart';
import 'package:tro/Componants/textfiled.dart';
import 'package:tro/constants/Size.dart';

class Login extends StatefulWidget {
   Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isselected = false ; 
  TextEditingController phonecntrlr = TextEditingController();
   TextEditingController emailController = TextEditingController();
   TextEditingController pwdcntr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  loginOrsignup()),
            );
          },),
          title: const Text('Login'),
          bottom:  TabBar(
            tabs: <Widget>[
              Tab(
                 text: "Phone",
                 
              ),
              Tab(
                 text: "Email/password",
              ),
              
            ],
          ),
        ),
        body:  TabBarView(
          children: <Widget>[
            Column(children: [
              gapH32,
        // TextButton(onPressed:()=>  , child:  Text("  Email/username ")),
     
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
                          border: OutlineInputBorder(borderSide: BorderSide())),
                    ),
                  ),
     
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: sigin(
                      onTap: siginmethod(),
                      btntext: "submit",
                    ),
                  )
     ],),
            Column(children: [
              gapH32,
      textfiled(
                    controller: emailController,
                    hintext: ' Enter Email ',
                    obscuretext: false,
                  ),
                   SizedBox(height: 15),
                  PasswordField(passwordcntr: pwdcntr),
                  SizedBox(height: 15),
      Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: sigin(
                      onTap: siginmethod(),
                      btntext: "submit",
                    ),
                  )
     
     ],),

          ],
        ),
      ),
    );
    


    
  }
  
  siginmethod() {}

 
   
}