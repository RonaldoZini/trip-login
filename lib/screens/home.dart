import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:tripLogin/models/user.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userModel = Provider.of<UserModel>(context);

    return Scaffold(
        backgroundColor: Color(0xFFF7F7F7),
        body: Stack(children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: SvgPicture.asset(
                'assets/icons/footer-home.svg',
                height: MediaQuery.of(context).size.height * 0.40,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 45),
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
                  "Welcome",
                  style: TextStyle(
                    color: Color(0xFF5A5A5A),
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(40),
                child: Text(
                  userModel.username,
                  style: TextStyle(
                    color: Color(0xFF5A5A5A),
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ]));
  }
}
