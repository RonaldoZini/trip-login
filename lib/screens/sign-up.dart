import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tripLogin/components/trip-button.dart';
import 'package:tripLogin/components/trip-camera.dart';
import 'package:tripLogin/components/trip-input.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String path = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                ],
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TripCamera(
                        callback: (path) => _setImage(path),
                      )
                    ),
                  );
                },
                child: _profileImage()
              )
            ],
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

  Widget _profileImage(){
    if(this.path == '') {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/icons/camera.svg",
            height: 15,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text(
              "Upload\npicture",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFA79BBF),
                fontSize: 10
              ),
            ),
          )
        ],
      );
    } else {
      return ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Container(
          height: 60,
          width: 60,
          child: Image.file(
          File(this.path),
          fit: BoxFit.cover
          )
        ),
      );
    }
  }

  void _setImage(String path){
    setState(() {
      this.path = path;
    });
  }
}