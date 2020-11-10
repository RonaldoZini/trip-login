import 'package:flutter/material.dart';
import 'package:tripLogin/components/trip-camera.dart';
import 'package:tripLogin/routes/routes.dart';
import 'package:tripLogin/screens/initial.dart';
import 'package:tripLogin/screens/sign-up.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case InitialRoute :
      return MaterialPageRoute(builder: (context) => Initial());
    case SignUpRoute :
      return MaterialPageRoute(builder: (context) => SignUp());
    case CameraRoute :
      return MaterialPageRoute(builder: (context) => TripCamera());
    default :
      return MaterialPageRoute(builder: (context) => Initial());
  }
}