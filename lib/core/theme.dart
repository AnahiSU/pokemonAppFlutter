import 'package:flutter/material.dart';

// Define tus colores y estilos globales aquí o impórtalos desde otro archivo.
const primary = Colors.blue;
const secondary = Colors.orange;
const backgroundColor = Colors.white;
const textTheme = 'Roboto';
const textSecondary = Colors.grey;

ThemeData themeLight() {
  return ThemeData(
    brightness: Brightness.light,
    fontFamily: textTheme,
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: secondary,
      primary: primary,
      secondary: secondary,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      foregroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 10.0,
    ),
    canvasColor: Colors.white,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
        fontFamily: textTheme,
      ),
      color: Colors.white,
      surfaceTintColor: primary,
      centerTitle: false,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    dialogTheme: const DialogTheme(
      surfaceTintColor: Colors.white,
    ),
    datePickerTheme: const DatePickerThemeData(
      surfaceTintColor: Colors.white,
    ),
    useMaterial3: true,
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.white,
      labelStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontFamily: textTheme,
      ),
      unselectedLabelColor: textSecondary,
      unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.normal,
        fontFamily: textTheme,
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      tabAlignment: TabAlignment.start,
      dividerHeight: 0.0,
    ),
    snackBarTheme: const SnackBarThemeData(
      contentTextStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
        fontFamily: textTheme,
      ),
    ),
  );
}

ThemeData themeDark() {
  return ThemeData(
    brightness: Brightness.light,
    fontFamily: textTheme,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.fromSeed(
      seedColor: secondary,
      primary: primary,
      secondary: secondary,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      foregroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 10.0,
    ),
    canvasColor: Colors.white,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
        fontFamily: textTheme,
      ),
      color: primary,
      surfaceTintColor: primary,
      centerTitle: false,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    dialogTheme: const DialogTheme(
      surfaceTintColor: Colors.white,
    ),
    datePickerTheme: const DatePickerThemeData(
      surfaceTintColor: Colors.white,
    ),
    useMaterial3: true,
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.white,
      labelStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontFamily: textTheme,
      ),
      unselectedLabelColor: textSecondary,
      unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.normal,
        fontFamily: textTheme,
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      tabAlignment: TabAlignment.start,
      dividerHeight: 0.0,
    ),
    snackBarTheme: const SnackBarThemeData(
      contentTextStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
        fontFamily: textTheme,
      ),
    ),
  );
}