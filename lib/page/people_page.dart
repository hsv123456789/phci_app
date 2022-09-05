import 'package:flutter/material.dart';
import 'package:phci/widgets/custom_app_bar.dart';

class PeoplePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        input: "People",
      ),
    );
  }
}
