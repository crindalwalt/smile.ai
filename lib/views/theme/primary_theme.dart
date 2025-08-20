import 'package:flutter/material.dart';

class MyThemes {
  ThemeData primaryTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF4F46E5),
      secondary: Color(0xFF6B7280),
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Color(0xFF111827),
      error: Colors.red,
      onError: Colors.white,
    ),
  );

  ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      primary: Color(0xFF4F46E5),
      secondary: Color(0xFF9CA3AF),
      surface: Color(0xFF1F2937),
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.white,
      error: Colors.red,
      onError: Colors.white,
    ),
  );

  // 1. Royal Indigo
  ThemeData royalIndigoTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF4F46E5), // Indigo
      secondary: Color(0xFF6366F1), // Soft Indigo
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Color(0xFF111827), // Neutral text
      error: Color(0xFFE11D48), // Rose Red
      onError: Colors.white,
    ),
  );

  // 2. Emerald Luxe
  ThemeData emeraldLuxeTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF059669), // Emerald
      secondary: Color(0xFF34D399), // Light Emerald
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Color(0xFF064E3B), // Deep Green
      error: Color(0xFFDC2626), // Red
      onError: Colors.white,
    ),
  );

  // 3. Golden Noir
  ThemeData goldenNoirTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFFD97706), // Gold
      secondary: Color(0xFFFCD34D), // Amber
      surface: Colors.white,
      onPrimary: Colors.black,
      onSecondary: Colors.black,
      onSurface: Color(0xFF1F2937), // Charcoal
      error: Color(0xFFB91C1C), // Dark Red
      onError: Colors.white,
    ),
  );

  // 4. Oceanic Blue
  ThemeData oceanicBlueTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF2563EB), // Ocean Blue
      secondary: Color(0xFF60A5FA), // Sky Blue
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Color(0xFF1E3A8A), // Navy
      error: Color(0xFFEF4444), // Vibrant Red
      onError: Colors.white,
    ),
  );

  // 5. Crimson Glow
  ThemeData crimsonGlowTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFFB91C1C), // Crimson
      secondary: Color(0xFFF87171), // Soft Red
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Color(0xFF7F1D1D), // Dark Crimson
      error: Color(0xFFDC2626), // Red
      onError: Colors.white,
    ),
  );

  // 6. Lavender Dream
  ThemeData lavenderDreamTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF7C3AED), // Purple
      secondary: Color(0xFFC4B5FD), // Light Lavender
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Color(0xFF1F2937),
      onSurface: Color(0xFF4C1D95), // Deep Purple
      error: Color(0xFFE11D48), // Rose Red
      onError: Colors.white,
    ),
  );

  // 7. Teal Serenity
  ThemeData tealSerenityTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF0D9488), // Teal
      secondary: Color(0xFF5EEAD4), // Aqua
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Color(0xFF134E4A),
      onSurface: Color(0xFF134E4A), // Deep Teal
      error: Color(0xFFF87171), // Soft Red
      onError: Colors.white,
    ),
  );

  // 8. Rose Quartz
  ThemeData roseQuartzTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFFDB2777), // Rose
      secondary: Color(0xFFF9A8D4), // Light Pink
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Color(0xFF831843),
      onSurface: Color(0xFF500724), // Deep Rose
      error: Color(0xFFDC2626), // Red
      onError: Colors.white,
    ),
  );

  // 9. Slate Elegance
  ThemeData slateEleganceTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF374151), // Slate
      secondary: Color(0xFF9CA3AF), // Light Gray
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Color(0xFF111827), // Jet Black
      error: Color(0xFFB91C1C), // Dark Red
      onError: Colors.white,
    ),
  );

  // 10. Arctic Frost
  ThemeData arcticFrostTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF0EA5E9), // Frost Blue
      secondary: Color(0xFFBAE6FD), // Ice Blue
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Color(0xFF082F49),
      onSurface: Color(0xFF082F49), // Navy Frost
      error: Color(0xFFDC2626), // Red
      onError: Colors.white,
    ),
  );
}
