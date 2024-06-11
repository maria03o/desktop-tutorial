import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tro/constants/Size.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

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
              child: Image.asset('lib/photos/travel-agency-online-service-2844644-2388681.png')),
                 Text(
                'Publish Your Tours',
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
                  'Are you a travel agency or guide? Use ZorDzair to showcase your tours, manage bookings, and reach a wider audience. Grow your business and share your passion for Algeria.',
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