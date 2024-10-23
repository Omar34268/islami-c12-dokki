import 'package:flutter/material.dart';
class Appstyle{
  static const Color lightprimary = Color(0xffB7935F);
  static const Color darkprimary = Color(0xff141A2E);
  static const Color darksecndary = Color(0xffFACC1D);
  static ThemeData lighttheme=ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white
    ),
    textTheme: TextTheme(
        headlineMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: lightprimary
        ),
      titleMedium: TextStyle(
         fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black
      ),
        bodySmall: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.black
        ),
        displayMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.black
        )
    ),
    cardTheme: CardTheme(
        surfaceTintColor: Colors.white,
        color: Colors.white,
        elevation: 15,
        margin: EdgeInsets.all(20)
    ),
    appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black
        )
    ),
    scaffoldBackgroundColor: Colors.transparent,
    dividerColor:lightprimary ,
    dividerTheme: DividerThemeData(
        color: Color(0xffB7935F),
        thickness: 2
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightprimary,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(
            color: Colors.black,
            size: 35
        ),
        unselectedIconTheme: IconThemeData(
            color: Colors.white,
            size: 35
        )
    ),
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
        primary: lightprimary,
        secondary:lightprimary.withOpacity(0.57),
        onPrimary: Colors.white,
        onSecondary: Colors.black,
      onPrimaryContainer: lightprimary
    ),
    useMaterial3: true,
  );
  static ThemeData darktheme=ThemeData(
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor:darkprimary
    ),
    textTheme: TextTheme(
        titleMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white
        ),
            bodySmall: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white
            ),
      displayMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: darksecndary
      ),
      headlineMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: darksecndary
      )
    ),
    cardTheme: CardTheme(
        surfaceTintColor: darkprimary,
        color:  darkprimary,
        elevation: 15,
        margin: EdgeInsets.all(20)
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white
      ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
        )
    ),
    scaffoldBackgroundColor: Colors.transparent,
    dividerColor: darksecndary ,
    dividerTheme: DividerThemeData(
        color: darksecndary,
        thickness: 2
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xffB7935F),
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(
            color: Colors.black,
            size: 35
        ),
        unselectedIconTheme: IconThemeData(
            color: Colors.white,
            size: 35
        )
    ),
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.deepPurple,
        primary: darkprimary,
        secondary:darksecndary ,
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        onPrimaryContainer: darksecndary,
    ),
    useMaterial3: true,
  );


}