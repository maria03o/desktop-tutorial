import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tro/screens/Componants/ExpandedListAnimationWidget.dart';
import 'package:tro/screens/sitetouristique/SiteCompo/availability.dart';

//import 'package:tro/screens/culture.dart' show CulturePage1;
import 'package:tro/screens/sitetouristique/SiteCompo/extradetail.dart';


class DetailPage1 extends StatelessWidget {


 Widget buildCategory0(String categoryName, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
      width: 80,
      height: 39.25,
      margin: const EdgeInsets.only(right: 8),
      clipBehavior: Clip.antiAlias,
      decoration: const ShapeDecoration(
        color: Color.fromARGB(0, 5, 5, 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color.fromARGB(0, 0, 0, 0),
            blurRadius: 3,
            offset: Offset(0, 1),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color.fromARGB(0, 0, 0, 0),
            blurRadius: 8,
            offset: Offset(0, 4),
            spreadRadius: 3,
          ),
        ],
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    categoryName,
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
    ),
  
    );
  }
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
    appBar: AppBar(
      title: Text('Your Title'),
    ),
    body: Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  color: Color.fromARGB(255, 2, 2, 2),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        child: Image.asset(
                          'assets/caption.jpg',
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: double.infinity,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 1.7,
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
              
              
               Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.15- 45,
              top: MediaQuery.of(context).size.height * 0.54 - 40,
              child: Container(
                width: 550,
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory1('Alger: 360 vacation in Algeria you\n\n\n\n\n\n can see a lot of things in alger cen'),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 0.66 - 40,
              child: Container(
                width: 550,
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                                      children: [
                                        Icon(Icons.star, color: Colors.orange),
                                        SizedBox(width: 5),
                                        Icon(Icons.star, color: Colors.orange),
                                       SizedBox(width: 5),
                                        Icon(Icons.star, color: Colors.orange),
                                        SizedBox(width: 5),
                                        Icon(Icons.star, color: Colors.orange),
                                        SizedBox(width: 5),
                                        Icon(Icons.star, color: Colors.orange),
                                         SizedBox(width: 5),
                                        Text(
                                          '4.9 ',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                ),
              ),
            ),
             Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 0.86 - 40,
              child: Container(
                width: 550,
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory1('About this activity '),
                    ],
                  ),
                ),
              ),
            ),
Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 1.2 - 40,
              child: Container(
                width: 550,
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory1('Experience'),
                    ],
                  ),
                ),
              ),
            ),
        Positioned(
  right: 0,
    left: MediaQuery.of(context).size.width * 0.138 - 45,
              top: MediaQuery.of(context).size.height * 0.954 - 40,
  child: GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ExamplePage() ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
      child: Container(
        height: 600,
        width: 200,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:
           Row(
        children: [
          buildCategory2('Highlights'),
          SizedBox(width: 287),
          Icon(Icons.flare_sharp, color: Colors.orange),
          SizedBox(width: 5),
        ],
      ),
    ),
  ),
)
)
),  
    Positioned(
  right: 0,
    left: MediaQuery.of(context).size.width * 0.138 - 45,
              top: MediaQuery.of(context).size.height * 0.7 - 40,
  child: GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => availability() ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
      child: Container(
        height: 600,
        width: 200,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
        children: [
          buildCategory2('Full description'),
          SizedBox(width: 260),
          Icon(Icons.flare_sharp, color: Colors.orange),
          SizedBox(width: 5),
        ],
      ),
    ),
  ),
)
)
),
           
                  Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 1.4- 40,
             child: Container(
    width: 550,
    height: 100,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildCategory2('Includes'),
          SizedBox(width: 300),
          Icon(Icons.flare_sharp, color: Colors.orange),
          SizedBox(width: 5),
        ],
      ),
    ),
  ),
            ),
           
                 Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 1.48- 40,
             child: Container(
    width: 550,
    height: 100,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildCategory2('Meeting point'),
          SizedBox(width: 270),
          Icon(Icons.flare_sharp, color: Colors.orange),
          SizedBox(width: 5),
        ],
      ),
    ),
  ),
            ),
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
                      buildCategory1('Prepare for the activity'),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 1.64- 40,
             child: Container(
    width: 550,
    height: 100,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildCategory2('What to bring'),
          SizedBox(width: 266),
          Icon(Icons.flare_sharp, color: Colors.orange),
          SizedBox(width: 5),
        ],
      ),
    ),
  ),
            ),
           
                  Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 1.71- 40,
             child: Container(
    width: 550,
    height: 100,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildCategory2('Not allowed'),
          SizedBox(width: 280),
          Icon(Icons.flare_sharp, color: Color.fromARGB(255, 255, 171, 44)),
          SizedBox(width: 5),
        ],
      ),
    ),
  ),
            ),
           
                 Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 1.79- 40,
             child: Container(
    width: 550,
    height: 100,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildCategory2('Know before you go'),
          SizedBox(width: 240),
          Icon(Icons.flare_sharp, color: Colors.orange),
          SizedBox(width: 5),
        ],
      ),
    ),
  ),
            ),
            
            
            
            
            
             Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.42- 45,
              top: MediaQuery.of(context).size.height * 1.9- 40,
               child: Container(
    width: 550,
    height: 100,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
                      buildCategory1('Customer reviews '),
                                             
        ],
      ),
    ),
  ),
            ),

                  Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.41- 45,
              top: MediaQuery.of(context).size.height * 1.96- 40,
               child: Container(
    width: 550,
    height: 100,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:  Row(
                                      children: [
                                        Icon(Icons.star, color: Colors.orange),
                                        SizedBox(width: 5),
                                        Icon(Icons.star, color: Colors.orange),
                                       SizedBox(width: 5),
                                        Icon(Icons.star, color: Colors.orange),
                                        SizedBox(width: 5),
                                        Icon(Icons.star, color: Colors.orange),
                                        SizedBox(width: 5),
                                        Icon(Icons.star, color: Colors.orange),
                                         SizedBox(width: 17),
                                        Text(
                                          '4.9 ',
                                          style: TextStyle(
                                            color: const Color.fromARGB(255, 255, 255, 255),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        
                                      ],
                                    ),
    ),
  ),
            ),

           
Positioned(
  right: 0,
  left: MediaQuery.of(context).size.width * 0.2- 45,
  top: MediaQuery.of(context).size.height * 2.1 - 40,
  child: Container(
    width: 550,
    height: 100,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
         
                   Text(
                      'Guide',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                  
                CircularPercentIndicator(radius: 60,lineWidth: 10,percent: 0.4,progressColor: Colors.amber,backgroundColor: Color.fromARGB(255, 105, 89, 1),circularStrokeCap: CircularStrokeCap.round,center: Text(
                      '4.8 ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),),
                 
                 
                 
                  ],
                ),
              ),
            ),
          ),

       Positioned(
  right: 0,
  left: MediaQuery.of(context).size.width * 0.42- 45,
  top: MediaQuery.of(context).size.height * 2.1 - 40,
  child: Container(
    width: 550,
    height: 100,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
         
                   Text(
                      'Guide',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                  
                CircularPercentIndicator(radius: 60,lineWidth: 10,percent: 0.4,progressColor: Colors.amber,backgroundColor: Color.fromARGB(255, 105, 89, 1),circularStrokeCap: CircularStrokeCap.round,center: Text(
                      '4.8 ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),),
                 
                 
                 
                  ],
                ),
              ),
            ),
          ),

   Positioned(
  right: 0,
  left: MediaQuery.of(context).size.width * 0.62- 45,
  top: MediaQuery.of(context).size.height * 2.1 - 40,
  child: Container(
    width: 550,
    height: 100,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
         
                  Text(
                      'Guide',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                  
                CircularPercentIndicator(radius: 60,lineWidth: 10,percent: 0.4,progressColor: Colors.amber,backgroundColor: Color.fromARGB(255, 105, 89, 1),circularStrokeCap: CircularStrokeCap.round,center: Text(
                      '4.8 ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),),
                 
                 
                 
                  ],
                ),
              ),
            ),
          ),

              
                    Positioned(
  right: 0,
  left: MediaQuery.of(context).size.width * 0.85- 45,
  top: MediaQuery.of(context).size.height * 2.1 - 40,
  child: Container(
    width: 550,
    height: 100,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
         
                   Text(
                      'Guide',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                  
                CircularPercentIndicator(radius: 60,lineWidth: 10,percent: 0.4,progressColor: Colors.amber,backgroundColor: Color.fromARGB(255, 105, 89, 1),circularStrokeCap: CircularStrokeCap.round,center: Text(
                      '4.8 ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),),
                 
                 
                 
                  ],
                ),
              ),
            ),
          ),

              
            Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 0.78 - 40,
              child: Container(
                width: 550,
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory2('Ejoy a memorable visit to the Museum when you''re \n\n\n\n\n\n\n\n in alger centre ou lba9i lirani nktbo khalota just hka'),
                    ],
                  ),
                ),
              ),
            ),
 //act
            Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 0.64 - 40,
              child: Container(
                width: 550,
                height: 50,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory3('Activity provider :'),
                    ],
                  ),
                ),
              ),
            ),
              Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 2.26 - 40,
              child: Container(
                width: 550,
                height: 50,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory3('Friday, Appril 5, 2024'),
                     
                    ],
                  ),
                ),
              ),
            ),
  Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 2.3 - 40,
              child: Container(
                width: 550,
                height: 50,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                     
                       Icon(Icons.star, color: Colors.orange),
                                        SizedBox(width: 5),
                                        Icon(Icons.star, color: Colors.orange),
                                       SizedBox(width: 5),
                                        Icon(Icons.star, color: Colors.orange),
                                        SizedBox(width: 5),
                                        Icon(Icons.star, color: Colors.orange),
                                        SizedBox(width: 5),
                                        Icon(Icons.star, color: Colors.orange),
                                         SizedBox(width: 17),
                    ],
                  ),
                ),
              ),
            ),
  //club
            Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.43 - 45,
              top: MediaQuery.of(context).size.height * 0.64 - 40,
              child: Container(
                width: 550,
                height: 50,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory6('369 Alger Centre '),
                    ],
                  ),
                ),
              ),
            ),
             Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.16 - 45,
              top: MediaQuery.of(context).size.height * 0.74 - 40,
              child: Container(
                width: 550,
                height: 50,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory6('369 Alger Centre '),
                    ],
                  ),
                ),
              ),
            ),

 //search
            Positioned(
              right: 40,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 0.1 - 40,
              child: Container(
                width: 50,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    SizedBox(width: 8),
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 5),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(width: 3),
                  ],
                ),
              ),
            ),
  // SHEART
            Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.12 - 45,
              top: MediaQuery.of(context).size.height * 2.9- 40,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
                child: Container(
                  height: 600,
                  width: 200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 460,
                          width: 300, 
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 0, 0),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            border: Border.all(
                              color: Color.fromARGB(255, 53, 52, 53), 
                              width: 2.0, 
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 240,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                  child: Image(
                                    fit: BoxFit.cover, 
                                    image: AssetImage('assets/caption.jpg'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'WATER ACTIVITY',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 123, 125, 123),
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Bordj El Behri : Architecture\nHour Guided',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(height: 40),
                                    Row(
                                      children: [
                                        Icon(Icons.star, color: Colors.orange),
                                        SizedBox(width: 5),
                                        Icon(Icons.star, color: Colors.orange),
                                       SizedBox(width: 5),
                                        Icon(Icons.star, color: Colors.orange),
                                        SizedBox(width: 5),
                                        Icon(Icons.star, color: Colors.orange),
                                        SizedBox(width: 5),
                                        Icon(Icons.star, color: Colors.orange),
                                         SizedBox(width: 5),
                                        Text(
                                          '4.9   (2336)',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Text(
                                          'From \$12.00 per person',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Color.fromARGB(255, 255, 255, 255),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 30,),
                         Container(
                          height: 460,
                          width: 300, 
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 0, 0),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            border: Border.all(
                              color: Color.fromARGB(255, 53, 52, 53), 
                              width: 2.0, 
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 240,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  ),
                                  child: Image(
                                    fit: BoxFit.cover, 
                                    image: AssetImage('assets/caption.jpg'),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'WATER ACTIVITY',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 123, 125, 123),
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      'Bordj El Behri : Architecture\nHour Guided',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(height: 40),
                                    Row(
                                      children: [
                                        Icon(Icons.star, color: Colors.orange),
                                        SizedBox(width: 5),
                                        Icon(Icons.star, color: Colors.orange),
                                       SizedBox(width: 5),
                                        Icon(Icons.star, color: Colors.orange),
                                        SizedBox(width: 5),
                                        Icon(Icons.star, color: Colors.orange),
                                        SizedBox(width: 5),
                                        Icon(Icons.star, color: Colors.orange),
                                         SizedBox(width: 5),
                                        Text(
                                          '4.9   (2336)',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        SizedBox(width: 10),
                                        Text(
                                          'From \$12.00 per person',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Color.fromARGB(255, 255, 255, 255),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 30,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.19 - 45,
              top: MediaQuery.of(context).size.height * 0.5148 - 40,
              child: Container(
                width: 550,
                height: 50,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory5('YOYYBXJR'),
                    ],
                  ),
                ),
              ),
            ),
              //PICC
               Positioned(
  right: 0,
  left: MediaQuery.of(context).size.width * 0.17 - 45,
  top: MediaQuery.of(context).size.height * 2.378 - 40,
  child: Container(
    width: 600,
    height: 60,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/caption.jpg'),
          ),
        ],
      ),
    ),
  ),
),

              //COMNTNM 
                           Positioned(
              right: 0,
             left: MediaQuery.of(context).size.width * 0.32- 45,
  top: MediaQuery.of(context).size.height * 2.372 - 40,
              child: Container(
                width: 550,
                height: 50,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Text(
                      'Jessical-Alger',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                     
                    ],
                  ),
                ),
              ),
            ),

                Positioned(
              right: 0,
             left: MediaQuery.of(context).size.width * 0.32- 45,
  top: MediaQuery.of(context).size.height * 2.396 - 40,
              child: Container(
                width: 550,
                height: 50,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                     
                      buildCategory3('Jessica@gmail.com'),
                     
                    ],
                  ),
                ),
              ),
            ),
 //CMNT
 Positioned(
              right: 0,
             left: MediaQuery.of(context).size.width * 0.15- 45,
  top: MediaQuery.of(context).size.height * 2.465 - 40,
              child: Container(
                width: 900,
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Text(
                      'Metadata Library that allows you to display \n progress widgets based on percentage,\n can be Circular or Linear,\n you can also customize it to your needs.\n HomepageRepository report issues',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                     
                    ],
                  ),
                ),
              ),
            ),

              Positioned(
  right: 0,
  left: MediaQuery.of(context).size.width * 0.15- 45,
  top: MediaQuery.of(context).size.height * 2.565- 40,
  child: Container(
    width: 550,
    height: 100,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildCategory2('See all reviews'),
          SizedBox(width: 280),
          Icon(Icons.flare_sharp, color: Colors.orange),
          SizedBox(width: 5),
        ],
      ),
    ),
  ),
)
, 

 Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.15 - 45,
              top: MediaQuery.of(context).size.height * 2.65 - 40,
              child: Container(
                width: 550,
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory1('You might also like '),
                    ],
                  ),
                ),
              ),
            ),
      ]))]))]),



      bottomNavigationBar: BottomAppBar(
        color: Colors.blue, // Change the color as needed
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('First Text', style: TextStyle(color: Colors.white)),
                Text('Second Text', style: TextStyle(color: Colors.white)),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to another class
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => availability()),
                );
              },
              child: Text('Check Availability'),
              ),
            
          ],
        ),
      ),
    );
  }
}


