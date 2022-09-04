// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:phci/widgets/bottom_nav_bar.dart';
import 'package:phci/widgets/app_drawer.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(29, 191, 193, 1),
          toolbarHeight: 60,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          title: Center(
            child: Text('Physcio..'),
          ),
        ),
        drawer: AppDrawer(),
        body: Center(
          child: Text("Hello there"),
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
