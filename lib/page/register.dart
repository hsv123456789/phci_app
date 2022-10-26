import 'package:flutter/material.dart';
import 'package:phci/page/login_page.dart';
import 'package:phci/services/auth_service.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  final AuthService authService = AuthService();
  final _textControllerUsername = TextEditingController();

  final _textControllerPassword = TextEditingController();

  final _textControllerPassword2 = TextEditingController();
  String userName = '';
  bool _passwordVisible = true;
  bool _confirnpasswordVisible = true;
  @override
  void dispose() {
    super.dispose();
    _textControllerPassword.dispose();
    _textControllerPassword2.dispose();
    _textControllerUsername.dispose();
  }

  void registerUser() {
    authService.registerUser(
      context: context,
      name: _textControllerUsername.text,
      password: _textControllerPassword.text,
    );
  }

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
    _confirnpasswordVisible = false;
  }

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
            SizedBox(
              width: 300,
              height: 75,
              child: TextField(
                controller: _textControllerUsername,
                decoration: const InputDecoration(hintText: ' Username'),
              ),
            ),
            SizedBox(
              width: 300,
              height: 75,
              child: TextField(
                controller: _textControllerPassword,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                    icon: Icon(_passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    color: Colors.grey,
                  ),
                ),
                obscureText: !_passwordVisible,
                enableSuggestions: false,
              ),
            ),
            SizedBox(
              width: 300,
              height: 75,
              child: TextField(
                controller: _textControllerPassword2,
                decoration: InputDecoration(
                    hintText: 'Confirm password',
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _confirnpasswordVisible = !_confirnpasswordVisible;
                          });
                        },
                        icon: Icon(_confirnpasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off))),
                keyboardType: TextInputType.visiblePassword,
                obscureText: !_confirnpasswordVisible,
                enableSuggestions: false,
              ),
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
                    registerUser();
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
