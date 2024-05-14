import 'package:flutter/material.dart';


class Searchforu extends StatefulWidget {
  @override
  _Searchforu createState() => _Searchforu();
}

class _Searchforu extends State<Searchforu> {

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
                    height: MediaQuery.of(context).size.height * 1.5,
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
  bottom: 0,
  right: 0,
  left: MediaQuery.of(context).size.width * 0.12 - 45,
  top: MediaQuery.of(context).size.height * 0.18 - 40,
  child: Padding(
    padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
    child: Container(
      height: 62,
      width: 280,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Container(
                            height: 500, 
                            width: 500, 
                            child: Center(
                              child: Text("Dialog Content for First Icon"), // Replace with your dialog content
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 81,
                    width: 370,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      border: Border.all(
                        color: Color.fromARGB(255, 53, 52, 53),
                        width: 2.0,
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 5),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.date_range,
                                    color: const Color.fromARGB(255, 166, 168, 169),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Date',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 150),
                                  Text(
                                    'jun1 , 2023',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.chevron_right,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 0),
                GestureDetector(
                  onTap: () {
showModalBottomSheet(
  context: context,
  builder: (BuildContext context) {
    int adultCount = 1;
    int childrenCount = 0;
    int infantCount = 0;

    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Container(
          height: 950, 
          padding: EdgeInsets.all(20),
          color: Color.fromARGB(255, 25, 34, 42), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop(); // Close the dialog
                    },
                    child: Icon(
                      Icons.close,
                      size: 35,
                      color: Color.fromARGB(255, 43, 112, 190),
                    ),
                  ),
                  SizedBox(width: 80),
                  Text(
                    'Participants',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Divider(color: Color.fromARGB(148, 129, 127, 127)),
              SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    'Adult \n (Age 18-99)',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 150),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        adultCount = adultCount > 0 ? adultCount - 1 : adultCount;
                      });
                    },
                    child: Icon(
                      Icons.remove_circle,
                      size: 35,
                      color: Color.fromARGB(255, 43, 112, 190),
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(
                    '$adultCount',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 12),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        adultCount++;
                      });
                    },
                    child: Icon(
                      Icons.add_circle,
                      size: 35,
                      color: Color.fromARGB(255, 43, 112, 190),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'Children \n (Age 4-17)',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 159),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        childrenCount = childrenCount > 0 ? childrenCount - 1 : childrenCount;
                      });
                    },
                    child: Icon(
                      Icons.remove_circle,
                      size: 35,
                      color: Color.fromARGB(255, 43, 112, 190),
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(
                    '$childrenCount',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 12),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        childrenCount++;
                      });
                    },
                    child: Icon(
                      Icons.add_circle,
                      size: 35,
                      color: Color.fromARGB(255, 43, 112, 190),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    'Infant \n (Age 3 and younger)',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 88),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        infantCount = infantCount > 0 ? infantCount - 1 : infantCount;
                      });
                    },
                    child: Icon(
                      Icons.remove_circle,
                      size: 35,
                      color: Color.fromARGB(255, 43, 112, 190),
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(
                    '$infantCount',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 12),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        infantCount++;
                      });
                    },
                    child: Icon(
                      Icons.add_circle,
                      size: 35,
                      color: Color.fromARGB(255, 43, 112, 190),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100),
              Divider(color: Color.fromARGB(174, 129, 127, 127)),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 280,),
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child:
                       Center(
                        child: 
                        Text(
                          'Apply',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  },
);
  },
                  child: Container(
                    height: 81,
                    width: 370,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      ),
                      border: Border.all(
                        color: Color.fromARGB(255, 53, 52, 53),
                        width: 2.0,
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 5),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.person,
                                    color: const Color.fromARGB(255, 166, 168, 169),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Participants',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 93),
                                  Text(
                                    'jun1 , 2023',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Icon(
                                    Icons.chevron_right,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(width: 10),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  ),
),
Positioned(
  bottom:   0,
   left: MediaQuery.of(context).size.width * 0.178 - 45,
  top: MediaQuery.of(context).size.height * 0.15 - 40,
  child: Text(
    'Your additional text here',
    style: TextStyle(
      color: Colors.white,
      fontSize: 16,
    ),
  ),
),
 Positioned(
  bottom:   0,
   left: MediaQuery.of(context).size.width * 0.178 - 45,
  top: MediaQuery.of(context).size.height * 0.4 - 40,
  child: Text(
    'Your additional text here',
    style: TextStyle(
      color: Colors.white,
      fontSize: 16,
    ),
  ),
),
 Positioned(
  bottom: 0,
  right: 0,
  left: MediaQuery.of(context).size.width * 0.12 - 45,
  top: MediaQuery.of(context).size.height * 0.13- 40,
  child: GestureDetector(
    child: Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
      child: Row(
            children: [
Container(
  height: 690,
  width: 370,
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 0, 0, 0),
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(15),
      bottomRight: Radius.circular(15),
      topLeft: Radius.circular(15),
      topRight: Radius.circular(15),
    ),
    border: Border.all(
      color: Color.fromARGB(255, 53, 52, 53),
      width: 2.0,
    ),
  ),
  child:
   Column(
    children: [
      SizedBox(height: 5),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 10),
                               Text(
                  'Activity name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ]),
                SizedBox(height: 7,),
                Row (
                  children: [
                    SizedBox(width: 10,),
                   Text(
                  'So this is where i should write the\n discribtion of the activity ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 173, 171, 171),
                    fontSize: 14,
                  ),
                ),  
                  ],
                ),
                
                SizedBox(height: 15),
                  Row(
                    children :[
                    SizedBox(width: 10,),
                    Icon(
                  Icons.person_2_outlined,
                  color: Color.fromARGB(255, 43, 112, 190),
                ),
                SizedBox(width: 12,)
               , Text(
                  'Guide : Arabic',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
           ],
            ),
               SizedBox(height: 15),
          Row(
                    children :[
                    SizedBox(width: 10,),
                    Icon(
                  Icons.timelapse_outlined,
                  color: Color.fromARGB(255, 41, 106, 197),
                ),
                SizedBox(width: 12,)
                ,Text(
                  '10 hours',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
           ],
            ),
        SizedBox(height: 15,)
           , Row(
                    children :[
                    SizedBox(width: 10,),
                    Icon(
                  Icons.location_on,
                  color: Color.fromARGB(255, 54, 119, 198),
                ),
                SizedBox(width: 12,)
                ,Text(
                  'Mn map tnjab ',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 76, 255),
                    fontSize: 16,
                  ),
                ),
           ],
            ),        SizedBox(height: 15,)
  ,  SizedBox(height: 15), // Add vertical space before the line
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    color: Color.fromARGB(255, 129, 127, 127), // Change the color as needed
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 10),
                               Text(
                  'Starting time',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ]
              ),
               SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 10,)
               , Text(
        '8 :00 AM', // Your additional text goes here
        style: TextStyle(
          color: Color.fromARGB(255, 166, 164, 164),
          fontSize: 16, // Adjust the font size as needed
         // fontFamily: 'Roboto',
          fontWeight: FontWeight.w700,
        ),
      ),
              ]
              ), 
                SizedBox(height: 15), // Add vertical space before the line
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    color: Color.fromARGB(255, 129, 127, 127), // Change the color as needed
                  ),
                ),
              ],
            ),
                          SizedBox(height: 15),
                  Row(
                    children :[
                    SizedBox(width: 10,),
                     Text(
                  '1 Adult x 15 DA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 170,)
               , Text(
                  '15 DA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
           ],
            ),
               ],
        ),
      ),
      SizedBox(height: 20), // Add vertical space between the content and the second container
      Container(
        height: 290,
        width: 370,
        decoration:
         BoxDecoration(
          color: Color.fromARGB(218, 88, 88, 88),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
          ),
      ),
        child: Column(
          children: [
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Row(
                    children: [
                      SizedBox(width: 10),
                     Text(
                        'Total price',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                   ],
                  ),
                              SizedBox(height:10 ,) 
                              ,   Row(
                    children: [
                      SizedBox(width: 10),
                     Text(
                        '15 DA',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                   ],
                  ),
                                 SizedBox(height: 5),
                  Row(
                    children: [
                      SizedBox(width: 10),
                     Text(
                        'All taxes and fees included',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                   ],
                  ),
                    SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(child:
                            Container(
                              width: 50,
                              height: 60,
                              margin: const EdgeInsets.only(right: 8),
                              clipBehavior: Clip.antiAlias,
                              decoration: const ShapeDecoration(
                                color: Color.fromARGB(255, 22, 89, 152),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)
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
                                        top: 0,
                                        left: 120,
                                        right: 0,
                                        bottom: 0,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start, // Adjust this line
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'pay remotely',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ],
                                      )
                                      )
                                      )
                                      ]
                                      )
                                    
                          
              ),
            ),
          ],
        ),
      
     SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(child:
                            Container(
                              width: 50,
                              height: 60,
                              margin: const EdgeInsets.only(right: 8),
                              clipBehavior: Clip.antiAlias,
                              decoration: const ShapeDecoration(
                                color: Color.fromARGB(255, 22, 89, 152),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)
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
                                        top: 0,
                                        left: 72,
                                        right: 0,
                                        bottom: 0,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start, // Adjust this line
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Reserve now & pay later',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                            ),
                                          ),
                                        ],
                                      )
                                      )
                                      )
                                      ]
                                      )
                                    
                          
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
    ] 
    )
  

   

  )
          ] 
      )
      )
      )
      )
      ])));
          
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

}
