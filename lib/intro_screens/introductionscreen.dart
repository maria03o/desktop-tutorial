
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tro/Authentification/loginOrsignup.dart';
import 'package:tro/intro_screens/intro_screen_1.dart';
import 'package:tro/intro_screens/intro_screen_2.dart';
import 'package:tro/intro_screens/intro_screen_3.dart';
import 'package:tro/intro_screens/intro_screen_4.dart';
 
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
                onlastpage = (index == 3);
              })
              },
                 children: [
                  
                     Intropage4(),
                 IntroPage2(),
                 IntroPage3(),
                
                 IntroPage1(),
                 
                 ],
            ),
             Container(
              alignment: Alignment(0,0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                   onTap: () => {indecatorcntroler.jumpToPage( 3)},
                    child: Text("Skip",style: TextStyle(fontWeight: FontWeight.bold),)),
                  SmoothPageIndicator(controller:indecatorcntroler, count:  4),

                  onlastpage 

                 ? TextButton(
                onPressed: () {
                   Navigator.of(context).push(_createRoute());
                },
                child: Text(
                  'Done',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                     
                  ),
                ))

                  : GestureDetector(
                     onTap: () => {indecatorcntroler.nextPage(duration: const Duration(milliseconds: 100) , curve: Curves.easeIn),},
                    child: Text("next",style: TextStyle(fontWeight: FontWeight.bold)))  
                ],
              ))
          ],
        ),
      ),
    );
  }
  Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>  loginOrsignup(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

}