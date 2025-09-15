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
  void loginToAccount({required String email, required String password}) {
    print("data has been reached to the provider");
    print("email: $email");
    print("password: $password");
    // firebase integration
  }

  // method for logout
  void logoutFromAccount() async {
    print("logging out ....");
    final logout = await _auth.signOut();
  }
}
