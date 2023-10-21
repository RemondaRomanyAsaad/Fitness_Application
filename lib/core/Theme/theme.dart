import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class ApplicationTheme {
  static bool isDark = true;
  static Color primaryColor = const Color(0xff5D9CEC);
  static ThemeData lightTheme = ThemeData(
  primaryColor: primaryColor,
  colorScheme: ColorScheme.fromSeed(
  primary:primaryColor,
  seedColor: primaryColor,
  onSecondary: Colors.white,
  onPrimary: primaryColor,
  onBackground: const Color(0xffDFECDB)),
  scaffoldBackgroundColor: Color(0xffDFECDB),

  appBarTheme:  AppBarTheme(
  iconTheme: const IconThemeData(color: Colors.black),
  backgroundColor: primaryColor,
  elevation: 0,
  centerTitle: false,
  toolbarHeight: 120,
  titleTextStyle: TextStyle(
  fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white)),
bottomNavigationBarTheme: BottomNavigationBarThemeData(
type: BottomNavigationBarType.fixed,
showSelectedLabels: false,
showUnselectedLabels: false,
selectedIconTheme: IconThemeData(
color: Colors.green,
),
unselectedIconTheme: IconThemeData(
color: Colors.grey.shade700,
),
selectedItemColor: Colors.green,
unselectedItemColor: Colors.grey.shade700,
),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
    ),);
}