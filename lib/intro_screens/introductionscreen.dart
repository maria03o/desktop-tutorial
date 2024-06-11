
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tro/intro_screens/intro_screen_1.dart';
import 'package:tro/intro_screens/intro_screen_2.dart';
import 'package:tro/intro_screens/intro_screen_3.dart';
 
 class IntroductionScreen extends StatefulWidget {
   IntroductionScreen({super.key});
 

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
   final  PageController indecatorcntroler  =  PageController(); 
   bool onlastpage = false ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:   SafeArea(
        child: Stack(
          children: [
            PageView(
              pageSnapping: true ,
              controller: indecatorcntroler,
              onPageChanged: ( index) => {
              setState((){
                onlastpage = (index == 2);
              })
              },
                 children: [
                  
                    IntroPage1(),
                 IntroPage2(),
                 IntroPage3(),
                 ],
            ),
             Container(
              alignment: Alignment(0,0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                   onTap: () => {indecatorcntroler.jumpToPage( 2)},
                    child: Text("Skip")),
                  SmoothPageIndicator(controller:indecatorcntroler, count:  3),

                  onlastpage 

                 ? GestureDetector(
                     onTap: () => {indecatorcntroler.nextPage(duration: const Duration(milliseconds: 100) , curve: Curves.easeIn),},
                    child: Text("done"))

                  : GestureDetector(
                     onTap: () => {indecatorcntroler.nextPage(duration: const Duration(milliseconds: 100) , curve: Curves.easeIn),},
                    child: Text("next"))  
                ],
              ))
          ],
        ),
      ),
    );
  }
}