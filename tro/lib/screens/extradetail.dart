import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:tro/screens/culture.dart' show DetailPage1;
import 'package:tro/screens/home.dart';
import 'package:tro/screens/hotel.dart';
import 'package:tro/screens/nature.dart';
import 'package:tro/screens/sport.dart';


class ExtradetailPage1 extends StatelessWidget {
   Widget buildCategory1(String text) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                      height: 0.20,
                      letterSpacing: 0.20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

Widget buildCategory2(String text) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                      height: 0.20,
                      letterSpacing: 0.20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

 
  Widget buildCategory3(String text) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 74, 73, 73),
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      height: 0.10,
                      letterSpacing: 0.10,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


 Widget buildCategory4(String text) {
  return Container(
    width: 150,
    height: 38.25,
    margin: const EdgeInsets.only(right: 8),
    clipBehavior: Clip.antiAlias,
    decoration: const ShapeDecoration(
      color: Color.fromARGB(255, 5, 5, 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(11),
          topRight: Radius.circular(11),
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(11)
        ),
      ),
      
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              top: 16,
              left: 16,
              right: 20,
              bottom: 16,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start, // Adjust this line
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    height: 0.10,
                    letterSpacing: 0.10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildCategory5(String text) {
  return Container(
    width: 120,
    height: 33.25,
    margin: const EdgeInsets.only(right: 4),
    clipBehavior: Clip.antiAlias,
    decoration: const ShapeDecoration(
      color: Color.fromARGB(255, 152, 22, 22),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5)
        ),
      ),
      
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              top: 16,
              left: 16,
              right: 5,
              bottom: 16,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start, 
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    height: 0.10,
                    letterSpacing: 0.10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

  Widget buildCategory6(String text) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 23, 85, 255),
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      height: 0.10,
                      letterSpacing: 0.10,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


 Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 3.5,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
         
           //first
             Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 0.17- 40,
              child: Container(
                width: 550,
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory1('Highlights'),
                    ],
                  ),
                ),
              ),
            ),
          
 Positioned(
  right: 0,
  left: MediaQuery.of(context).size.width * 0.15 - 45,
  top: MediaQuery.of(context).size.height * 0.24 - 40,
  child: Container(
    width: 550,
    height: 100,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Icon(Icons.circle_sharp, size: 10, color: Colors.orange),
          SizedBox(width: 10),
          
          buildCategory2('Value types with builders, Dart classes as enums lzm tet3mr hdi,\n\n\n\n\n\n\n and serialization. This library is the runtime IDK here rani nkhlt'),
          
         
        ]
      ),
    ),
  ),
),

 Positioned(
  right: 0,
  left: MediaQuery.of(context).size.width * 0.15 - 45,
  top: MediaQuery.of(context).size.height * 0.29 - 40,
  child: Container(
    width: 550,
    height: 100,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Icon(Icons.circle_sharp, size: 10, color: Colors.orange),
       SizedBox(width: 10),
          
          buildCategory2('Value types with builders, Dart classes as enums lzm tet3mr hdi,\n\n\n\n\n\n\n and serialization. This library is the runtime IDK here rani nkhlt'),
          
        ]
      ),
    ),
  ),
),

         
                

      

  //2
             Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 1.58 - 40,
              child: Container(
                width: 550,
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory1('Full description'),
                    ],
                  ),
                ),
              ),
            ),
           //3
             Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 1.58 - 40,
              child: Container(
                width: 550,
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory1('Includes'),
                    ],
                  ),
                ),
              ),
            ),
            //4
             Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 1.58 - 40,
              child: Container(
                width: 550,
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory1('Meeting point'),
                    ],
                  ),
                ),
              ),
            ),
            //5
             Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 1.58 - 40,
              child: Container(
                width: 550,
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory1('What to bring'),
                    ],
                  ),
                ),
              ),
            ),
            //6
             Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 1.58 - 40,
              child: Container(
                width: 550,
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory1('Not allowed'),
                    ],
                  ),
                ),
              ),
            ),
            //7
             Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 1.58 - 40,
              child: Container(
                width: 550,
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory1('Know before you go'),
                    ],
                  ),
                ),
              ),
            ),
            
            ]
            ),
            ),   
    );
 }}
