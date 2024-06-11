import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tro/constants/Size.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      color: Colors.white,
       child: Center(
         child: Column(
          children: [

            gapH32,
             SizedBox(
              height:350,
              width: 350,
              child: Image.asset('lib/photos/Screenshot_2024-06-10_045308-removebg-preview.png')),
                 Text(
                'Discover New Places',
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
                  'Explore the hidden gems of Algeria with ZorDzair! From the Sahara''s majestic dunes to ancient Roman ruins, uncover Algeria’s rich culture, history, and beauty.',
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