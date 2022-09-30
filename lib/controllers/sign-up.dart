import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:tripLogin/models/user.dart';

class SignUpController {
  String? userPhoto;
  TextEditingController emailTextController = new TextEditingController();
  TextEditingController usernameTextController = new TextEditingController();
  TextEditingController passwordTextController = new TextEditingController();

  void signUp() {
    UserModel userModel = UserModel();
    userModel.userPhoto = userPhoto;
    userModel.username = this.emailTextController.text;
    userModel.email = this.usernameTextController.text;
    userModel.password = md5.convert(utf8.encode(this.passwordTextController.text)).toString();
    // submit post...
  }
}
