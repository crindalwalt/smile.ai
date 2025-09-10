import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smile_ai/providers/authentication_provider.dart';
import 'package:smile_ai/providers/theme_provider.dart';
import 'package:smile_ai/views/pages/onboarding.dart';
import 'package:smile_ai/views/theme/primary_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(SmileAi());
}

class SmileAi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => AuthenticationProvider()),
      ],
      child: RootApp(),
    );
  }
}

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyThemes themes = MyThemes();
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themes.arcticFrostTheme,
      darkTheme: themes.darkTheme,
      themeMode: themeProvider.mode,
      home: OnboardingScreen(),
    );
  }
}
