import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final String hintText; 
  final TextEditingController passwordcntr ;// Add a named parameter for hint text

  PasswordField({
    Key? key,
    required this.passwordcntr,
    this.hintText = 'Enter your password', // Default hint text if not provided
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool visibleIcon = false;
  Icon passwordIcon = Icon(Icons.visibility_off);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: widget.passwordcntr,
        obscureText: visibleIcon ? true : false,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                visibleIcon = !visibleIcon;
                passwordIcon = visibleIcon
                    ? const Icon(Icons.visibility_off)
                    : const Icon(Icons.visibility);
              });
            },
            icon: passwordIcon,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromARGB(109, 255, 255, 255),
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromARGB(109, 255, 255, 255),
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          fillColor: Colors.grey,
          filled: true,
          hintText: widget.hintText, // Use the hint text from the widget
        ),
      ),
    );
  }
}
