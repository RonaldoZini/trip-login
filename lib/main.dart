import 'package:flutter/material.dart';
import 'package:tripLogin/screens/login.dart';

void main() {
  runApp(MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Consolas'),
    ));
}