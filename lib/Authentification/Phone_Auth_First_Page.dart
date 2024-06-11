// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tro/Authentification/Login.dart';
import 'package:tro/Componants/SquaretTile.dart';
import 'package:tro/constants/Size.dart';
import 'package:tro/Authentification/signin.dart';
import 'package:flutter/services.dart';

 
class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  String get phonecntrlr => phonecntrlr;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 0, 0, 0)),
          onPressed: () =>  {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>    Login()),)
          }
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: 
          Column(children: [
            
           Text(
              'Enter 4-digit code ',
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            gapH12,
             SizedBox(
             width: 350,
                 child: Text(
                  ' A text messege with 4-digit verification code was just sent to  ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                               ),
               ),
            gapH32,
            gapW12,
            Form(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: const Color.fromARGB(255, 0, 0, 0))),
                  child: SizedBox(
                    height: 68,
                    width: 68,
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                      showCursor:  true,

                      // ignore: deprecated_member_use
                      style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 30),
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      keyboardType: TextInputType.phone,
                      cursorColor: Colors.black,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: const Color.fromARGB(255, 0, 0, 0))),
                  child: SizedBox(
                    height: 68,
                    width: 68,
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                      showCursor:  true,

                      // ignore: deprecated_member_use
                      style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 30),
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      keyboardType: TextInputType.phone,
                      cursorColor: Colors.black,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: const Color.fromARGB(255, 0, 0, 0))),
                  child: SizedBox(
                    height: 68,
                    width: 68,
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                      showCursor:  true,

                      // ignore: deprecated_member_use
                      style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 30),
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      keyboardType: TextInputType.phone,
                      cursorColor: Colors.black,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: const Color.fromARGB(255, 0, 0, 0))),
                  child: SizedBox(
                    height: 68,
                    width: 68,
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                      showCursor:  true,

                      // ignore: deprecated_member_use
                      style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 30),
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      keyboardType: TextInputType.phone,
                      cursorColor: Colors.black,
                    ),
                  ),
                )
              ],
            )),
            
            gapH48,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: sigin(
                onTap: siginmethod(),
                btntext: "Verfiy your Phone Number ",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "did not Revice Code ? ",
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
                TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero)),
                  child: Text(
                    "Request Again  ",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            
          ]),
        ),
      ),
    );
  }

  siginmethod() {}
}
