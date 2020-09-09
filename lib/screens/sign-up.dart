import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "New \nAccount",
            style: TextStyle(
              color: Color(0xFFF7F7F7),
              fontWeight: FontWeight.bold,
              fontSize: 30
            )
          ),
          // Container(
          //   child: Image.asset(
          //     "assets/images/capture.png",
          //     height: 68,
          //     width: 66,
          //   ),
          // )
        ],
      )
    );
  }
}