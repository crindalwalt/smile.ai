import 'package:flutter/material.dart';
import 'package:smile_ai/views/pages/onboarding.dart';
import 'package:smile_ai/views/theme/primary_theme.dart';

void main() {
  runApp(SmileAi());
}

class SmileAi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyThemes themes = MyThemes();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themes.arcticFrostTheme,
      darkTheme: themes.darkTheme,
      themeMode: ThemeMode.light,
      home: OnboardingScreen(),
    );
  }
}
