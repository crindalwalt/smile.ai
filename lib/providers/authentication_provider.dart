import 'package:flutter/material.dart';

class AuthenticationProvider extends ChangeNotifier {
  //method for register
  void registerAccount({required String name, required String email,required String password}){
    print("registering request is in progress");

    
  }
  // method for login
  void loginToAccount({required String email, required String password}) {
    print("data has been reached to the provider");
    print("email: $email");
    print("password: $password");
    // firebase integration
  }
}
