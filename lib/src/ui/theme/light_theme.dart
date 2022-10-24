import 'package:flutter/material.dart';

ThemeData get lightTheme {
  const color = Colors.pink;
  return ThemeData(
    fontFamily: 'NotoSansJP',
    useMaterial3: true,
    canvasColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: color,
      brightness: Brightness.light,
      background: Colors.white,
      surface: Colors.white,
      surfaceTint: Colors.white,
      primary: color,
      onPrimary: Colors.white,
      secondary: color,
      onSecondary: Colors.white,
      tertiary: Colors.green,
      onTertiary: Colors.white,
    ),
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.black,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: color, width: 2),
      ),
    ),
    cardTheme: const CardTheme(
      color: Color.fromARGB(255, 233, 232, 232),
      elevation: 10,
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
