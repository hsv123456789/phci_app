import 'package:flutter/material.dart';
import 'package:phci/services/auth_service.dart';

class InputField extends StatefulWidget {
  const InputField({Key key}) : super(key: key);

  @override
  State<InputField> createState() => InputFieldState();
}

class InputFieldState extends State<InputField> {
  static final textControllerUsername = TextEditingController();
  static final textControllerPassword = TextEditingController();
  final AuthService authService = AuthService();
  bool _passwordVisible = true;
  @override
  void dispose() {
    super.dispose();
    textControllerPassword.dispose();
    textControllerUsername.dispose();
  }

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey[200]))),
            child: TextField(
              controller: textControllerUsername,
              decoration: const InputDecoration(
                  hintText: "Enter your username",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey[200]))),
            child: TextField(
              controller: textControllerPassword,
              decoration: InputDecoration(
                hintText: "Enter your password",
                hintStyle: const TextStyle(color: Colors.grey),
                border: InputBorder.none,
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
        ],
      ),
    );
  }
}

class LoginDataFetcher {
  final AuthService authService = AuthService();
  void signInUser(BuildContext context) {
    authService.logInUser(
      context: context,
      name: InputFieldState.textControllerUsername.text,
      password: InputFieldState.textControllerPassword.text,
    );
  }
}
