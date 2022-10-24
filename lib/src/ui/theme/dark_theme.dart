import 'package:flutter/material.dart';

ThemeData get darkTheme {
  const color = Colors.pink;
  return ThemeData(
    fontFamily: 'NotoSansJP',
    useMaterial3: true,
    canvasColor: Colors.black,
    colorScheme: ColorScheme.fromSeed(
      seedColor: color,
      brightness: Brightness.dark,
      background: Colors.black,
      surface: Colors.black,
      surfaceTint: Colors.black,
      surfaceVariant: Colors.black,
      primary: color,
      onPrimary: Colors.white,
      primaryContainer: Colors.black,
      secondary: color,
      onSecondary: Colors.white,
      tertiary: Colors.green,
      onTertiary: Colors.white,
    ),
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.white,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: color, width: 2),
      ),
    ),
    cardTheme: const CardTheme(
      color: Color(0xFF141414),
      clipBehavior: Clip.antiAlias,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
      ),
    ),
    visualDensity: const VisualDensity(
      horizontal: 2,
      vertical: 1,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: color,
      foregroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: color,
    ),
  );
}
