import 'package:flutter/material.dart';
import 'package:tro/screens/sitetouristique/SiteCompo/PageCompt/searchforu.dart';

/*class WillayaPage extends StatefulWidget {
  @override
  _WillayaPage createState() => _WillayaPage();
}

class _WillayaPage extends State<WillayaPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Continue in this willaya ",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 46, 42, 42),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 1.6,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 120.0,
              left: 0.0,
              right: 40.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Things to do in',
                      style: TextStyle(
                        color: Color.fromARGB(255, 166, 164, 164),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    //SizedBox(height: 5.0), // Space between texts
                    Text(
                      'Constantine',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 30,
                        
                        fontWeight: FontWeight.w800,
                      ),
                    ),SizedBox(height: 10.0),
                                        Text(
                      'Algeria\'s "City of Bridges,"\n blends history and beauty \n with its iconic architecture\n and vibrant culture, drawing\n visitors  to its picturesquestreets \n and UNESCO-listed sites.',
                      style: TextStyle(
                        color: Color.fromARGB(255, 166, 164, 164),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.65 - 45,
              top: MediaQuery.of(context).size.height * 0.15 - 40,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 19, right: 18),
                child: Container(
                  height: 200,
                  width: 90,
                  child: 
                   Row(
                      children: [
                        Container(
                        height: 300,
                        width: 150,
                        child: 
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
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
Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.08 - 45,
              top: MediaQuery.of(context).size.height * 0.39 - 40,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
    child: Container(
     // height: 62,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(0, 33, 149, 243),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromARGB(196, 156, 155, 155), // Set the color of the border here
                    width: 2, // Set the width of the border if needed
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child:
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align children to the start and end of the row
  children: [
    Text(
      'Region',
      style: TextStyle(
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
    ),
    Spacer(), // Pushes the icon to the rightmost position
    Icon(
      Icons.arrow_downward,
      color: Color.fromRGBO(255, 255, 255, 0.528),
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
),

Positioned(
  right: 0,
  left: MediaQuery.of(context).size.width * 0.13 - 45,
  top: MediaQuery.of(context).size.height * 0.52 - 40,
  child: Padding(
    padding: const EdgeInsets.only(top: 20.0, ),
    child: Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(45, 118, 118, 118), // Set background color to blue
       // borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/caption.jpg',
                width: 140,
                height: 140,
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    'ACTIVITY/PLACE NAME',
                    style: TextStyle(
                      color: Color.fromARGB(146, 255, 255, 255),
                      fontSize: 14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    'Constantine : Discover \n old and European towns',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    '7 - 20 days',
                    style: TextStyle(
                      color: Color.fromARGB(129, 255, 255, 255),
                      fontSize: 14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Text(
                    'FROM 20 DA per person',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 15,
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
  right: 0,
  left: MediaQuery.of(context).size.width * 0.13 - 45,
  top: MediaQuery.of(context).size.height * 0.68 - 40,
  child: Padding(
    padding: const EdgeInsets.only(top: 20.0, ),
    child: Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(57, 109, 109, 109), // Set background color to blue
       // borderRadius: BorderRadius.circular(10),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/caption.jpg',
                width: 140,
                height: 140,
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    'ACTIVITY/PLACE NAME',
                    style: TextStyle(
                      color: Color.fromARGB(146, 255, 255, 255),
                      fontSize: 14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    'Constantine : Discover \n old and European towns',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    '7 - 20 days',
                    style: TextStyle(
                      color: Color.fromARGB(129, 255, 255, 255),
                      fontSize: 14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Text(
                    'FROM 20 DA per person',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 15,
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

]
),

              
        ),
      );
    
  }
}*/




/*class WillayaPage extends StatefulWidget {
  @override
  _WillayaPageState createState() => _WillayaPageState();
}

class _WillayaPageState extends State<WillayaPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Mountainous areas ",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 46, 42, 42),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 1.6,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 120.0,
              left: 0.0,
              right: 40.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Algeria\'s mountains,\n like the Atlas and Saharan Atlas,\n are scenic and biodiverse,\n drawing nature lovers and adventurers.',
                      style: TextStyle(
                        color: Color.fromARGB(255, 166, 164, 164),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    //SizedBox(height: 5.0), // Space between texts
                    Text(
                      'Constantine',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 10.0),
 ],
                ),
              ),
            ),
 Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.05 - 45,
              top: MediaQuery.of(context).size.height * 0.61 - 40,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 18, right: 18),
                child: Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(0, 33, 149, 243),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color.fromARGB(196, 156, 155, 155),
                                width: 2,
                              ),
                            ),
                            padding:
                                EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Willaya',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_downward,
                                  color: Color.fromRGBO(255, 255, 255, 0.528),
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
            ),
            Positioned(
              right: 0,
              left: MediaQuery.of(context).size.width * 0.13 - 45,
              top: MediaQuery.of(context).size.height * 0.32 - 40,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 99, right: 99),
                child: ImageSlider(), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageSlider extends StatefulWidget {
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _currentPage = 0;

  final List<String> _images = [
    'assets/caption.jpg',
    'assets/caption.jpg',
    'assets/caption.jpg',
    'assets/caption.jpg',
    'assets/caption.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
    
      child: Stack(
        children: [
          PageView.builder(
            itemCount: _images.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Transform.scale(
                scale: _currentPage == index ? 1.1 : 1.0,
                child: Image.asset(
                  _images[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _images.length,
                (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 100),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: _currentPage == index ? 20 : 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: _currentPage == index ? const Color.fromARGB(255, 27, 87, 137) : Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

*/















class WillayaPage extends StatefulWidget {
  @override
  _WillayaPage createState() => _WillayaPage();
}

class _WillayaPage extends State<WillayaPage> {
  Widget buildCategory0(String categoryName, VoidCallback onPressed, String imagePath, String imageText) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 140, // Adjusted width
        height: 280, // Adjusted height
        margin: const EdgeInsets.only(right: 8),
        child: Column(
          children: [
            Container(
              width: 200, // Adjusted width
              height: 180, // Adjusted height
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), // Added border radius
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 6), // Space between image and text
            Container(
              width: double.infinity,
              height: 10, // Height of the category text
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(0, 5, 5, 5),
                borderRadius: BorderRadius.circular(5),
              ),
              child:
               Text(
                categoryName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12, // Adjusted font size
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  height: 0.10,
                  letterSpacing: 0.10,
                ),
              ),
            ),
  
          ],
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Continue in this willaya ",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 46, 42, 42),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 1.6,
                    decoration: BoxDecoration(
                      color: Colors.black,
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
                height: 400,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCategory0('For you', () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Searchforu()));
                      }, 'assets/caption.jpg', ''),

                      buildCategory0('Culture', () {}, 'assets/caption.jpg', ''),

                      buildCategory0('Sports', () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Searchforu()));
                      }, 'assets/caption.jpg', ''),

                      buildCategory0('Nature', () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Searchforu()));
                      }, 'assets/caption.jpg', ''),

                      buildCategory0('Hotel', () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Searchforu()));
                      }, 'assets/caption.jpg', ''),

                      buildCategory0('Food', () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Searchforu()));
                      }, 'assets/caption.jpg', ''),
                    ],
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
