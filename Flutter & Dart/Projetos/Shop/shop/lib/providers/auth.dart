import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  static const _apiKey = 'AIzaSyAacFcQ8uM1dpHen5t_Hi_dJ1EU8JaKiNU';
  static const _url = 'identitytoolkit.googleapis.com';
  static const _signUpWithEmailAndPasswordPath = '/v1/accounts:signUp';
  static const _signInWithCustomToken = '/v1/accounts:signIn';
  static const _params = {'key': _apiKey};

  Future<void> signup(String email, String password) async {
    final response = await http.post(
        Uri.https(_url, _signUpWithEmailAndPasswordPath, _params),
        body: json.encode({
          "email": email,
          'password': password,
          'returnSecureToken': true,
        }));

    print(json.decode(response.body));

    return Future.value();
  }

  Future<void> login(String email, String password) async {
    final response =
        await http.post(Uri.https(_url, _signInWithCustomToken, _params),
            body: json.encode({
              "email": email,
              'password': password,
              'returnSecureToken': true,
            }));

    print(json.decode(response.body));

    return Future.value();
  }
}
