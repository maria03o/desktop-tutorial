import 'package:flutter/material.dart';
import 'package:tro/screens/culture.dart';
import 'package:tro/screens/food.dart';
import 'package:tro/screens/home.dart';
import 'package:tro/screens/hotel.dart';
import 'package:tro/screens/nature.dart';


 class SportsPage1 extends StatelessWidget {
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
      width: 80,
      height: 39.25,
      margin: const EdgeInsets.only(right: 8),
      clipBehavior: Clip.antiAlias,
      decoration: const ShapeDecoration(
        color: Color.fromARGB(255, 5, 5, 5),
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
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
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
                      fontSize: 25,
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
    width: 100,
    height: 38.25,
    margin: const EdgeInsets.only(right: 8),
    clipBehavior: Clip.antiAlias,
    decoration: const ShapeDecoration(
      color: Color.fromARGB(255, 152, 22, 22),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
          bottomLeft: Radius.circular(11),
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
              right: 5,
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
              left: MediaQuery.of(context).size.width * 0.15 - 45,
              top: MediaQuery.of(context).size.height * 0.6 - 40,
              child: Container(
                width: 550,
                height: 42.25,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory0('For you', () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => foru()));
                      }),
                      buildCategory0('Culture', () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CulturePage1()));
                      }),

                      buildCategory1('Sports', ),
                      buildCategory0('Nature', () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NaturePage1()));
                      }),
                      buildCategory0('Hotel', () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HotelPage1()));
                      }),
                      buildCategory0('Food', () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FoodPage1()));
                      }),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 0.22 - 40,
              child: Container(
                width: 550,
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory2('Lets plan your next\n\n\n\n vacation in Algeria '),
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
                      buildCategory2('Make your best\n\n\n experiences  '),
                    ],
                  ),
                ),
              ),
            ),
             Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 1.27 - 40,
              child: Container(
                width: 550,
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory2('Zoning In Algeria'),
                    ],
                  ),
                ),
              ),
            ),
             Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 1.82 - 40,
              child: Container(
                width: 550,
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory2('Best Willaya With\n\n\nThese Activites'),
                    ],
                  ),
                ),
              ),
            ),
 //text
            Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 0.39 - 40,
              child: Container(
                width: 550,
                height: 50,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory3('Immerse yourself in some of the world’s\n\n\n\n\n\nmost historic Bardo National Museum on'),
                    ],
                  ),
                ),
              ),
            ),
  //learn 
            Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.17 - 45,
              top: MediaQuery.of(context).size.height * 0.46 - 40,
              child: Container(
                width: 550,
                height: 50,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory3('Learn more '),
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
              top: MediaQuery.of(context).size.height * 0.67- 40,
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
              left: MediaQuery.of(context).size.width * 0.12 - 45,
              top: MediaQuery.of(context).size.height * 1.58 - 40,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
                child: Container(
                  height: 200,
                  width: 50,
                  child: Row(
                    children: [
                      Container(
                        height: 174,
                        width: 174,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/caption.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        height: 174,
                        width: 174,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/caption.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.12 - 45,
              top: MediaQuery.of(context).size.height * 1.35 - 40,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
                child: Container(
                  height: 200,
                  width: 50,
                  child: Row(
                    children: [
                      Container(
                        height: 174,
                        width: 174,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/caption.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        height: 174,
                        width: 174,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/caption.jpg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.19 - 45,
              top: MediaQuery.of(context).size.height * 1.392 - 40,
              child: Container(
                width: 550,
                height: 50,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory4('YOYYBXJR'),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.19 - 45,
              top: MediaQuery.of(context).size.height * 1.429999 - 40,
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
             Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.12 - 45,
              top: MediaQuery.of(context).size.height * 1.9 - 40,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
                child: Container(
                  height: 300,
                  width: 130,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                        height: 300,
                        width: 174,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/caption.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        height: 300,
                        width: 174,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/caption.jpg'),
                          ),
                        ),
                      ),
                        SizedBox(width: 20,),
                      Container(
                        height: 300,
                        width: 174,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/caption.jpg'),
                          ),
                        ),
                      ),
                        SizedBox(width: 20,),
                      Container(
                        height: 300,
                        width: 174,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/caption.jpg'),
                          ),
                        ),
                      ),
           ] ),
                ),
              ),
             ),
             ),
                    ],
        ),
      ),
    );
  }
}