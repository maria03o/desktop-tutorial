import 'package:flutter/material.dart';
import 'package:tro/Authentification/login.dart';
import 'package:tro/Authentification/loginOrsignup.dart';
import 'package:tro/Authentification/signin.dart';
import 'package:tro/constants/Size.dart';

class NoProfile extends StatefulWidget {
  NoProfile({super.key});

  @override
  State<NoProfile> createState() => _NoProfileState();
}

class _NoProfileState extends State<NoProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black), // Change the color of the AppBar icons
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu), // Changed to menu icon to open the settings
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => Settings(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    const begin = Offset(1.0, 0.0);
                    const end = Offset.zero;
                    const curve = Curves.easeInOut;

                    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                    var offsetAnimation = animation.drive(tween);

                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
      
      body: SingleChildScrollView(
        child: SafeArea(
          
          child: Center(
            child: Column(
              children: [
                gapH64,
                gapH48,
                Icon(Icons.person, size: 150),
                Text(
                  "Log into an existing account",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                gapH12,
                SizedBox(
                  width: 250,
                  height: 60,
                  child: sigin(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => loginOrsignup()),
                      )
                    },
                    btntext: "Log in",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black), // Change the color of the AppBar icons
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu), // Changed to menu icon to open the settings
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => NoProfile(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    const begin = Offset(0.0, 1.0);
                    const end = Offset.zero;
                    const curve = Curves.easeInOut;

                    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                    var offsetAnimation = animation.drive(tween);

                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },
                ),
              );
            },
          ),
        ],),
       body: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
            
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Account'),
                onTap: () {
                  // Handle the tap event here
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  // Handle the tap event here
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () {
                  // Handle the tap event here
                },
              ),
            ],
          ),
    );
  }
}