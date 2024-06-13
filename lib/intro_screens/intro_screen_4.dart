import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tro/constants/Size.dart';

class Intropage4 extends StatelessWidget {
   Intropage4({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
      color: Colors.white,
       child: Center(
         child: Column(
          children: [
             
            gapH32,
             SizedBox(
              height:350,
              width: 350,
              child: Image.asset('lib/photos/Screenshot_2024-06-10_045057-removebg-preview.png')),
                 Text(
                'Welcome to ZorDzair',
                style: TextStyle(
                  color: Colors.lightBlue[900],
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              gapH32,
             
               SizedBox(
                width: 350,
                 child: Text(
                  'Welcome to ZorDzair! Start your Algerian adventure with us and discover why Algeria is a top destination. Enjoy the best travel experiences with ZorDzair. Happy travels!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                               ),
               ),
          ],),
       )
    );
  }
}