import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          //  side: const BorderSide(color: Colors.black),
          ),
          backgroundColor:  Color.fromRGBO(245, 246, 249, 1),
        ),
        onPressed: press,
        child: Row(
          children: [
            Icon(
              icon,
              color: Color.fromARGB(255, 67, 99, 195),
              size: 22,
            ),
            const SizedBox(width: 20),
            Expanded(child: Text(text)),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}


