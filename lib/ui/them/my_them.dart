import 'package:flutter/material.dart';

class MyThemeData {
  static final Color lightPrimary = Color(0xFFB7935F);
  static final Color darkPrimary = Color(0xFF141A2E);
  static final Color darkSecandry = Color(0xFFFACC1D);

  static final ThemeData lightTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          fontFamily: 'Messiri',
          color: Colors.black,
        ),
        titleMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontFamily: 'Messiri',
            color: Colors.black),
        titleSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            fontFamily: 'Messiri',
            color: Colors.black),
        bodyMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            fontFamily: 'Inter',
            color: Colors.black),
        bodySmall: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            fontFamily: 'Inter',
            color: Colors.black),
      ),
      cardTheme: CardTheme(
        color: Colors.white,
        surfaceTintColor: null,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightPrimary,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(
          size: 30,
        ),
        unselectedItemColor: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
              fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black)),
      colorScheme: ColorScheme.fromSeed(
        seedColor: Color(0xFFB7935F),
        primary: Color(0xFFB7935F),
        onPrimary: Colors.white,
        secondary: Color(0xFFB7935F),
        onSecondary: Colors.black,
      ));
  static final ThemeData darktTheme = ThemeData(
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: darkPrimary),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            fontFamily: 'Messiri',
            color: Colors.white),
        titleMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            fontFamily: 'Messiri',
            color: Colors.white),
        titleSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            fontFamily: 'Messiri',
            color: Colors.white),
        bodyMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            fontFamily: 'Inter',
            color: Colors.white),
        bodySmall: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            fontFamily: 'Inter',
            color: Colors.white),
      ),
      cardTheme: CardTheme(
        color: darkPrimary,
        surfaceTintColor: null,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkPrimary,
        selectedItemColor: darkSecandry,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 33,
        ),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          titleTextStyle: TextStyle(
              fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white)),
      colorScheme: ColorScheme.fromSeed(
        seedColor: darkPrimary,
        primary: darkPrimary,
        onPrimary: Colors.white,
        secondary: darkSecandry,
        onSecondary: Colors.black,
      ));
}
