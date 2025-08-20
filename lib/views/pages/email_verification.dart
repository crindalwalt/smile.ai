import 'package:flutter/material.dart';
import 'package:smile_ai/views/pages/home.dart';

class EmailVerificationScreen extends StatelessWidget {
  final String email;

  const EmailVerificationScreen({
    super.key,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            children: [
              const Spacer(),

              // Icon / Illustration
              Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                  color: colors.primary.withOpacity(0.10),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.mark_email_read_outlined,
                  size: 48,
                  color: colors.primary,
                ),
              ),

              const SizedBox(height: 24),

              // Title
              Text(
                "Verify your email",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: colors.onBackground,
                ),
              ),

              const SizedBox(height: 12),

              // Subtitle / Instructions
              Text(
                "We’ve sent a verification link to",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: colors.secondary,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                email,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: colors.onBackground,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Click the link in the email to continue.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: colors.secondary,
                ),
              ),

              const SizedBox(height: 32),

              // Open Email App (outlined)
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: colors.secondary.withOpacity(0.4)),
                    foregroundColor: colors.onBackground,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text("Open email app"),
                ),
              ),

              const SizedBox(height: 12),

              // Resend Email (primary)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colors.primary,
                    foregroundColor: colors.onPrimary,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text("Resend verification email"),
                ),
              ),

              const SizedBox(height: 16),

              // Change email
              TextButton(
                onPressed: () {
                   // Navigate to login  screen
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                },
                child: Text(
                  "Delay for Now, continue",
                  style: TextStyle(
                    color: colors.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const Spacer(),

              // Help / Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.info_outline, size: 16, color: colors.secondary),
                  const SizedBox(width: 8),
                  Flexible(
                    child: Text(
                      "Didn’t get the email? Check your spam folder.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: colors.secondary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
