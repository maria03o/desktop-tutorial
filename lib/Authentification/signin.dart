import 'package:flutter/material.dart';

class sigin extends StatefulWidget {
  final Function()? onTap;
  final String btntext;

  const sigin({Key? key, required this.onTap, required this.btntext})
      : super(key: key);

  @override
  _SiginState createState() => _SiginState();
}

class _SiginState extends State<sigin> {
  bool _isClicked = false;

  void _handleTap() {
    setState(() {
      _isClicked = !_isClicked;
    });

    // Perform the onTap function
    if (widget.onTap != null) {
      widget.onTap!();
    }

    // Revert the animation after a short duration
    Future.delayed(Duration(milliseconds: 200), () {
      setState(() {
        _isClicked = !_isClicked;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          color: _isClicked ? Color.fromRGBO(0, 55, 151, 1) : Colors.blue,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
          child: Text(
            widget.btntext,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

