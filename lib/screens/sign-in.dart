
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tripLogin/components/trip-button.dart';
import 'package:tripLogin/components/trip-input.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome \nback",
                style: TextStyle(
                  color: Color(0xFFF7F7F7),
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                )
              ),
            ],
          ),
          TripInput(
            label: "Email",
            iconePath: "assets/icons/email.svg",
            type: TextInputType.emailAddress,
          ),
          TripInput(
            label: "Password",
            iconePath: "assets/icons/password.svg",
            obscure: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Color(0xFFF7F7F7),
                    fontSize: 12
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: TripButton(
              text: "Sign in",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  "or sign in with",
                  style: TextStyle(
                    color: Color(0xFFA79BBF)
                  ),
                )
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _roundButtonSubscribe('google.svg'),
              _roundButtonSubscribe('facebook.svg'),
              _roundButtonSubscribe('twitter.svg')
            ],
          ),
        ],
      )
    );
  }

  Widget _roundButtonSubscribe(String icon){
    return Container(
      height: 40,
      width: 40,
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: SvgPicture.asset(
            'assets/icons/$icon}',
            height: MediaQuery.of(context).size.height * 0.40,
            fit: BoxFit.fill,
          ),
        ),
        onPressed: () {
          print('Subscribe onPressed');
        },
      ),
    );
  }
}