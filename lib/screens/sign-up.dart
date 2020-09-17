import 'package:flutter/material.dart';
import 'package:tripLogin/components/trip-button.dart';
import 'package:tripLogin/components/trip-input.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
          TripInput(
            label: "Email",
            iconePath: "assets/icons/email.svg",
            type: TextInputType.emailAddress,
          ),
          TripInput(
            label: "Username",
            iconePath: "assets/icons/user.svg",
            type: TextInputType.text,
          ),
          TripInput(
            label: "Password",
            iconePath: "assets/icons/password.svg",
            obscure: true,
          ),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: TripButton(
              text: "Sign up",
            ),
          )
        ],
      )
    );
  }
}