import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticationProvider extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //method for register
  Future<bool> registerAccount({
    required String name,
    required String email,
    required String password,
  }) async {
    print("registering request is in progress");
    // we will bring a function from firebase that will take care of the whole registration process
    final UserCredential registering = await _auth
        .createUserWithEmailAndPassword(email: email, password: password);
    if (registering.user == null) {
      print("registration process failed");
      return false;
    }

    return true;
  }

  // method for login
  Future<bool> loginToAccount({
    required String email,
    required String password,
  }) async {
    try {
      final UserCredential login = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } catch (e) {
      return false;
    }

  }

  // method for logout
  void logoutFromAccount() async {
    await _auth.signOut();
  }
}
