import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:phci/constants/error_handling.dart';
import 'package:phci/constants/utis.dart';
import 'package:phci/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:phci/providers/user_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:phci/page/main_page.dart';

class AuthService {
  String uri = 'http://192.168.1.118:3000';

  void registerUser(
      {String name, String password, BuildContext context}) async {
    try {
      User user = User(id: '', name: name, password: password);
      http.Response res = await http.post(Uri.parse('$uri/api/register'),
          body: user.toJson(),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          });
      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            showSnackBar(
              context,
              'Account created! Login with the same credentials',
            );
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  void logInUser({String name, String password, BuildContext context}) async {
    try {
      http.Response res = await http.post(
        Uri.parse('$uri/api/login'),
        body: jsonEncode({
          'name': name,
          'password': password,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      print(res.body);
      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () async {
            SharedPreferences preferences =
                await SharedPreferences.getInstance();
            Provider.of<UserProvider>(context, listen: false).setUser(res.body);
            await preferences.setString(
                'x-auth-token', jsonDecode(res.body)['token']);
            Navigator.of(context, rootNavigator: true).pushNamed("main");
          });
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
