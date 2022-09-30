import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:crypto/crypto.dart';

class SignInController {
  TextEditingController emailTextController = new TextEditingController();
  TextEditingController passwordTextController = new TextEditingController();

  void signIn() {
    String password = md5.convert(utf8.encode(this.passwordTextController.text)).toString();
    // this.passwordTextController.text
    // submit post...
  }
}
