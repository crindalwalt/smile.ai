import 'package:flutter/material.dart';
import 'package:smile_ai/views/pages/email_verification.dart';
import 'package:smile_ai/views/pages/register.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                "Welcome Back 👋",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: colors.onBackground,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Login to continue creating stunning AI photos",
                style: TextStyle(
                  fontSize: 14,
                  color: colors.secondary,
                ),
              ),

              const SizedBox(height: 40),

              // Email Field
              TextFormField(
                style: TextStyle(color: colors.onSurface),
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: colors.secondary),
                  filled: true,
                  fillColor: colors.surface,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: colors.secondary.withOpacity(0.3)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: colors.primary, width: 2),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),

              const SizedBox(height: 20),

              // Password Field
              TextFormField(
                style: TextStyle(color: colors.onSurface),
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: colors.secondary),
                  filled: true,
                  fillColor: colors.surface,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: colors.secondary.withOpacity(0.3)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: colors.primary, width: 2),
                  ),
                ),
                obscureText: true,
              ),

              const SizedBox(height: 12),

              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(color: colors.primary),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Login Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                     // Navigate to login  screen
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => EmailVerificationScreen(email: "shahzadfarooqdev@gmail.com",)),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colors.primary,
                    foregroundColor: colors.onPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text("Login"),
                ),
              ),

              const SizedBox(height: 20),

              // Divider with OR
              Row(
                children: [
                  Expanded(
                    child: Divider(color: colors.secondary.withOpacity(0.3)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      "or",
                      style: TextStyle(color: colors.secondary),
                    ),
                  ),
                  Expanded(
                    child: Divider(color: colors.secondary.withOpacity(0.3)),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Social Login Button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: colors.secondary.withOpacity(0.4)),
                    foregroundColor: colors.onBackground,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: const Text("Continue with Google"),
                ),
              ),

              const Spacer(),

              // Sign Up Redirect
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(color: colors.secondary),
                  ),
                  TextButton(
                    onPressed: () {
                       // Navigate to login  screen
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: colors.primary),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
