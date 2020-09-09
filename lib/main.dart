import 'package:flutter/material.dart';
import 'package:tripLogin/routes/routes.dart';
import 'package:tripLogin/screens/initial.dart';
import 'routes/router.dart' as router;

void main() {
  runApp(MaterialApp(
      home: Initial(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Consolas',
        canvasColor: Colors.transparent,
      ),
      onGenerateRoute: router.generateRoute,
      initialRoute: InitialRoute,
    ));
}