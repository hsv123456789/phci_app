import 'package:flutter/material.dart';
import 'package:phci/widgets/input_field.dart';
import 'package:phci/page/main_page.dart';
import 'package:phci/page/register.dart';

class InputWrapper extends StatefulWidget {
  const InputWrapper({Key key}) : super(key: key);

  @override
  State<InputWrapper> createState() => _InputWrapperState();
}

class _InputWrapperState extends State<InputWrapper> {
  final LoginDataFetcher inputfieldState = LoginDataFetcher();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: IntrinsicHeight(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const InputField(),
              ),
              const SizedBox(
                height: 40,
              ),
              TextButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: const Text(
                        'Email sent to your particuar email address '),
                    action: SnackBarAction(
                      label: 'Ok!',
                      onPressed: () {},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                style: TextButton.styleFrom(foregroundColor: Colors.grey),
                child: const Text("Forgot Password"),
              ),
              const SizedBox(
                height: 40,
              ),
              SingleChildScrollView(
                child: SizedBox(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 200,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(29, 191, 193, 1),
                          ),
                          onPressed: () {
                            inputfieldState.signInUser(context);
                          },
                          child: const Text("Login"),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        height: 50,
                        width: 200,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(29, 191, 193, 1),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyRegister(),
                              ),
                            );
                          },
                          child: const Text("Register"),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
