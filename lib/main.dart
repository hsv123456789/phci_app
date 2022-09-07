// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:phci/page/login_page.dart';
import 'package:phci/page/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => LoginPage(),
    },
  ));
}
