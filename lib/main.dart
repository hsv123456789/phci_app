// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:phci/page/login_page.dart';
import 'package:phci/page/main_page.dart';
import 'package:phci/page/register.dart';
import 'package:provider/provider.dart';
import 'package:phci/providers/user_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => UserProvider(),
      )
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        'register': (context) => MyRegister(),
        'login': (context) => LoginPage(),
        'main': (context) => MainPage(),
      },
    ),
  ));
}
