// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:phci/widgets/bottom_nav_bar.dart';
import 'package:phci/widgets/app_drawer.dart';
import 'package:phci/widgets/custom_app_bar.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar(
          input: "Physcio..",
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
