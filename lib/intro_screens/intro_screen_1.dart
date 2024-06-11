import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
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

            gapH16,
             SizedBox(
              height:50,
              width: 50,
              child: Image.asset("tro/assets/caption (3).jpg"))
          ],),
       )
    );
  }
}