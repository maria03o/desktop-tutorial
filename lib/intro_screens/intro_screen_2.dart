import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tro/constants/Size.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

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
              child: Image.asset('lib/photos/tour-guide-guiding-tourist-4539350-3845811.png')),
                 Text(
                'Find Tours',
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
                  'Plan your trip effortlessly! Connect with trusted agencies and guides to explore Algiers, Tassili n''Ajjer, Oran beaches, and more. Enjoy tailored tours for every interest.',
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