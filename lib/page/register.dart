import 'package:flutter/material.dart';
import 'package:phci/page/login_page.dart';

class MyRegister extends StatelessWidget {
  const MyRegister({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(29, 191, 193, 1),
        toolbarHeight: 60,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        title: const Center(
          child: Center(
            child: Text('Register'),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            const Text(
              'REGISTER',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              width: 300,
              height: 75,
              child: TextField(
                decoration: InputDecoration(hintText: ' Email id'),
              ),
            ),
            const SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(hintText: 'Password'),
              ),
            ),
            const SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(hintText: 'Confirm password'),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(29, 191, 193, 1),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: const Text("Register"),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
