import 'package:flutter/material.dart';
import 'package:phci/widgets/input_wrapper.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key key}) : super(key: key);
  Color greenishBlue = const Color.fromRGBO(29, 191, 193, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              greenishBlue,
              greenishBlue,
              greenishBlue,
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const Header(),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  )),
              child: InputWrapper(),
            ))
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
        Center(
          child: Text(
            "Login",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            "Welcome to the PHCI App",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        )
      ]),
    );
  }
}
