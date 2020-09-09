import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tripLogin/components/trip-button.dart';
import 'package:tripLogin/components/trip-modal.dart';
import 'package:tripLogin/screens/sign-up.dart';

class Initial extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF7F7F7),
        body: Stack(
          children: [
            Positioned(
              bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: SvgPicture.asset(
                    'assets/icons/footer-login.svg',
                    height: MediaQuery.of(context).size.height * 0.40,
                    fit: BoxFit.fill,
                  ),
                ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(top : 45),
                  child: Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: MediaQuery.of(context).size.height * 0.33,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(40),
                  child: Text(
                    "Enjoy the trip \nwith me",
                    style: TextStyle(
                      color: Color(0xFF5A5A5A),
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.only(left : 40, right: 40),
                      child: TripButton(
                        text: "Sign up",
                        onPressed: () {
                          TripModal.showModalSheet(context, SignUp());
                        }
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 25),
                    child: Padding(
                      padding: EdgeInsets.only(left : 40, right: 40),
                      child: TripButton(
                        text: "Sign in",
                        secondary: true,
                      ),
                    ),
                  ),
                ]
              ),
            )
          ]
        )
      );
  }
}
