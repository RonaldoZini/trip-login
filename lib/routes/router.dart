import 'package:flutter/material.dart';
import 'package:tripLogin/routes/routes.dart';
import 'package:tripLogin/screens/initial.dart';
import 'package:tripLogin/screens/sign-up.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case InitialRoute :
      return MaterialPageRoute(builder: (context) => Initial());
    case SignUpRoute :
      return MaterialPageRoute(builder: (context) => SignUp());
    default :
      return MaterialPageRoute(builder: (context) => Initial());
  }
}