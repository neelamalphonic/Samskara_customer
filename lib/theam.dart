import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samskara_customer/common/ColorConstants.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(

    primaryColor: kContentColorLightTheme,
    accentColor: Colors.white,
    scaffoldBackgroundColor: kContentColorDarkTheme,
    appBarTheme: appBarTheme,
    textTheme: ThemeData.light().textTheme.apply(
      fontFamily: 'Tw Cen MT',
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
      primaryColor: kContentColorDarkTheme,
      accentColor: Colors.black,
      scaffoldBackgroundColor: kContentColorLightTheme,
      appBarTheme: appBarTheme,
      textTheme: ThemeData.light().textTheme.apply(
        fontFamily: 'Tw Cen MT',
      ),
  );
}

final appBarTheme = AppBarTheme(centerTitle: true, elevation: 0,);