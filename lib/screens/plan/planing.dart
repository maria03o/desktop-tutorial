import 'package:flutter/material.dart';
import 'package:tro/screens/plan/planingdet.dart';

class PlanningPage extends StatefulWidget {
  final String title;

  const PlanningPage({Key? key, required this.title}) : super(key: key);

  @override
  State<PlanningPage> createState() => _PlanningPage();
}

class _PlanningPage extends State<PlanningPage> {
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
    Widget buildCategory5(String text) {
  return Container(
    width: 300,
    height: 30000,
    margin: const EdgeInsets.only(right: 8),
    clipBehavior: Clip.antiAlias,
    decoration: const ShapeDecoration(
      color: Color.fromARGB(255, 58, 91, 255),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30)
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
            height: 30000,
            padding: const EdgeInsets.only(
              top: 20,
              left: 25,
              right: 5,
              bottom: 20,
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
                    fontSize: 16,
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
    width: 180,
    height: 30000,
    margin: const EdgeInsets.only(right: 8),
    clipBehavior: Clip.antiAlias,
    decoration: const ShapeDecoration(
      color: Color.fromARGB(255, 58, 91, 255),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30)
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
            height: 30000,
            padding: const EdgeInsets.only(
              top: 20,
              left: 74,
              right: 5,
              bottom: 20,
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
                    fontSize: 16,
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
                    height: MediaQuery.of(context).size.height * 1.2,
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
              left: MediaQuery.of(context).size.width * 0.33 - 45,
              top: MediaQuery.of(context).size.height * 0.11- 40,
              child: Container(
                width: 550,
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory1('Everything to make trip \n\n\n\n\n\n\n creation as you like'),
                    ],
                  ),
                ),
              ),
            ),
         
          Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.43 - 45,
              top: MediaQuery.of(context).size.height * 0.18- 40,
              child: Container(
                width: 550,
                height: 100,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory2('Plan your trip for free '),
                    ],
                  ),
                ),
              ),
            ),
  //SEARCH
  Positioned(
              right: 50,
              left: MediaQuery.of(context).size.width * 0.25 - 45,
              top: MediaQuery.of(context).size.height * 0.28 - 40,
              child: Container(
                width: 10,
                height: 70,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 66, 85, 204),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 30, 30, 30).withOpacity(0.4),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
             children: [
  SizedBox(width: 20),
  Icon(Icons.search, color: Color.fromRGBO(0, 0, 0, 1)),
  SizedBox(width: 20),
  Expanded(
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Choose a destination',
        hintStyle: TextStyle(color: Colors.black,fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,), 
        border: InputBorder.none,
      ),
    ),
  ),
  SizedBox(width: 3),
],
 ),
              ),
            ),
            //pic
  Positioned(
  bottom: 0,
    right: 0,
    left: MediaQuery.of(context).size.width * 0.12 - 45,
    top: MediaQuery.of(context).size.height * 0.38 - 40,
    child: Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
      child: Container(
        height: 150,
        width: 160,
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 150,
                          width: 160,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/caption.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Alger',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                           
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 49),
                    Column(
                      children: [
                        Container(
                          height: 150,
                          width: 160,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/caption.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Boumerdes',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                           
                          ),
                        ),
                      ],
                    ),
               ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ),
 
         Positioned(
  bottom: 0,
    right: 0,
    left: MediaQuery.of(context).size.width * 0.12 - 45,
    top: MediaQuery.of(context).size.height * 0.62- 40,
    child: Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
      child: Container(
        height: 150,
        width: 160,
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 150,
                          width: 160,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/caption.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Chlef',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                       
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 49),
                    Column(
                      children: [
                        Container(
                          height: 150,
                          width: 160,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/caption.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Tizi ouzou',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                           
                          ),
                        ),
                      ],
                    ),
               ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ),
        
          Positioned(
  bottom: 0,
    right: 0,
    left: MediaQuery.of(context).size.width * 0.12 - 45,
    top: MediaQuery.of(context).size.height * 0.85- 40,
    child: Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
      child: Container(
        height: 150,
        width: 160,
        child: Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 150,
                          width: 160,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/caption.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Tipaza',
                          
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                       
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 48),
                    Column(
                      children: [
                        Container(
                          height: 150,
                          width: 160,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/caption.jpg'),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Bejaia',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                           
                          ),
                        ),
                      ],
                    ),
               ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ),
  //NEXT 
   Positioned(
  right: 0,
    left: MediaQuery.of(context).size.width * 0.36 - 45,
              top: MediaQuery.of(context).size.height * 1.12- 40,
  child: GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DropDown(
        ) ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
      child: Container(
       width: 550,
                height: 50,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
                width: 550,
                height: 50,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory6('Next'),
                    ],
                  ),
                ),
              ),
    ),
  ),
)
)
),  
    

 
  ]

  )
          )
          );
              }
}