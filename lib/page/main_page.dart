import 'package:flutter/material.dart';
import 'package:phci/widgets/bottom_nav_bar.dart';
import 'package:phci/widgets/app_drawer.dart';
import 'package:phci/widgets/custom_app_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        input: "Physcio..",
      ),
      drawer: const AppDrawer(),
      body: const Center(
        child: Text("Hello there"),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
