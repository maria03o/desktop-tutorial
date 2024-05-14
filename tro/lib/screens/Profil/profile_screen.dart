import 'package:flutter/material.dart';

import 'components/profile_menu.dart';
import 'components/profile_pic.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const ProfilePic(),
            const SizedBox(height: 80),
            ProfileMenu(
              text: "My Account",
              icon: Icons.person,
              press: () => {},
            ),
            ProfileMenu(
              text: "Notifications",
              icon: Icons.notifications,
              press: () {},
            ),
            ProfileMenu(
              text: "Settings",
              icon: Icons.settings,
              press: () {},
            ),
            ProfileMenu(
              text: "Help Center",
              icon: Icons.help,
              press: () {},
            ),
            ProfileMenu(
              text: "Log Out",
              icon: Icons.logout,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
