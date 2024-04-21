// main.dart

import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'screens/home.dart' as Home;
import 'screens/home2.dart' as Home2;


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
      ),
      home: const HomeWrapper(),
    );
  }
}

class HomeWrapper extends StatefulWidget {
  const HomeWrapper({Key? key}) : super(key: key);

  @override
  _HomeWrapperState createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: [
         
            Home.foru(),
           
          
            Home2.MyHome2Page(title: 'title',),
            
          ],
        ),
      ),
     bottomNavigationBar: Container(
  decoration: BoxDecoration(
    border: Border(
      top: BorderSide(width: 1.0, color: Color.fromARGB(255, 197, 15, 142)), // Add top border
    ),
  ),
  child: BottomNavyBar(
    containerHeight: 70,
    backgroundColor: Color.fromARGB(255, 24, 24, 24),
    selectedIndex: _currentIndex,
    onItemSelected: (index) {
      setState(() {
        _currentIndex = index;
        _pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      });
    },
    items: <BottomNavyBarItem>[
      BottomNavyBarItem(
        inactiveColor: Color.fromARGB(255, 255, 255, 255),
        icon: Icon(Icons.zoom_in),
        title: Text('Item 1'),
        activeColor: const Color.fromARGB(255, 250, 251, 251),
      ),
      BottomNavyBarItem(
        inactiveColor: Color.fromARGB(255, 255, 255, 255),
        icon: Icon(Icons.people),
        title: Text('Item 2'),
        activeColor: const Color.fromARGB(255, 252, 254, 253),
      ),
      BottomNavyBarItem(
        inactiveColor: Color.fromARGB(255, 255, 255, 255),
        icon: Icon(Icons.map_sharp),
        title: Text('Item 3'),
        activeColor: const Color.fromARGB(255, 251, 253, 251),
      ),
      BottomNavyBarItem(
        inactiveColor: Color.fromARGB(255, 255, 255, 255),
        icon: Icon(Icons.plagiarism),
        title: Text('Item 4'),
        activeColor: const Color.fromARGB(255, 252, 252, 252),
      ),
      BottomNavyBarItem(
        inactiveColor: Color.fromARGB(255, 255, 255, 255),
        icon: Icon(Icons.person),
        title: Text('Item 5'),
        activeColor: Color.fromARGB(255, 255, 255, 255),
      ),
    ],
  ),
),

    );
  }
}




