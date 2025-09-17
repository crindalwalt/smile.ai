import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthenticationProvider extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? user;
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

    this.user = registering.user!;

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
      this.user = login.user!;
      return true;
    } catch (e) {
      return false;
    }
  }

  bool checkEmailVerification() {
    bool isVerfied = user!.emailVerified;
    return isVerfied;
  }

  void sendEmailVerficationLink () async {
    await user!.sendEmailVerification();
  }

  // method for logout
  void logoutFromAccount() async {
    this.user = null;
    await _auth.signOut();
  }
}
