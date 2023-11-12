import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  const CustomTheme._();

  static final ThemeData theme = ThemeData(
    brightness: Brightness.light,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: NoShadowCupertinoPageTransitionsBuilder(),
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      },
    ),
    iconTheme: const IconThemeData(
      color: CupertinoColors.systemBlue,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: CupertinoColors.white,
      selectedItemColor: CupertinoColors.systemBlue,
      unselectedItemColor: CupertinoColors.systemBlue,
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 15,
        height: 20 / 15,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      contentPadding: EdgeInsets.all(16),
      filled: true,
      fillColor: CupertinoColors.secondarySystemBackground,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: CupertinoColors.systemGrey4,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: CupertinoColors.systemBlue,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: CupertinoColors.systemGrey4,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: CupertinoColors.white,
      foregroundColor: CupertinoColors.black,
      elevation: 0,
      actionsIconTheme: IconThemeData(
        color: CupertinoColors.systemBlue,
        size: 24,
      ),
      titleSpacing: 16,
      centerTitle: false,
      iconTheme: IconThemeData(
        color: CupertinoColors.activeBlue,
      ),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 22,
        height: 28 / 22,
        fontWeight: FontWeight.w400,
      ),
    ),
    navigationBarTheme: const NavigationBarThemeData(
      labelTextStyle: MaterialStatePropertyAll(
        TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12,
          height: 16 / 12,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: CupertinoColors.white,
        disabledForegroundColor: CupertinoColors.white,
        backgroundColor: CupertinoColors.systemBlue,
        disabledBackgroundColor: CupertinoColors.inactiveGray,
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: const TextStyle(
          fontSize: 20,
          height: 25 / 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    scaffoldBackgroundColor: const Color(0xFFFAFAFA),
    tabBarTheme: TabBarTheme(
      indicatorColor: CupertinoColors.activeBlue,
      labelPadding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      indicator: UnderlineTabIndicator(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(
          color: CupertinoColors.activeBlue,
          width: 4,
        ),
      ),
      // selected label
      labelColor: CupertinoColors.activeBlue,
      labelStyle: const TextStyle(
        fontSize: 13,
        height: 18 / 13,
        fontWeight: FontWeight.bold,
      ),
      // unselected label
      unselectedLabelColor: CupertinoColors.black,
      unselectedLabelStyle: const TextStyle(
        fontSize: 13,
        height: 18 / 13,
      ),
    ),
    dropdownMenuTheme: const DropdownMenuThemeData(
      textStyle: TextStyle(
        fontSize: 17,
        height: 22 / 17,
        fontWeight: FontWeight.w400,
      ),
      menuStyle: MenuStyle(),
    ),
  );
}
