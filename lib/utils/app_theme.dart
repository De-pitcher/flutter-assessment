import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';

class AppTheme {
  static ThemeData appTheme(BuildContext context) {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      inputDecorationTheme: InputDecorationTheme(
        suffixIconColor: kGreyColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.white),
        ),
        hintStyle: AppTextStyle.style2,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
      textTheme: Theme.of(context).textTheme.copyWith(
            titleSmall: AppTextStyle.style1,
            bodyMedium: AppTextStyle.style3,
            bodySmall: AppTextStyle.style4,
          ),
      expansionTileTheme: const ExpansionTileThemeData(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white),
        ),

        // collapsedBackgroundColor: kPrimaryColor.withOpacity(.1),
        // collapsedBackgroundColor: Colors.white,
        collapsedShape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: AppTextStyle.style2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 0,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: kPrimaryColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(64),
        ),
      ),
    );
  }
}

class AppTextStyle {
  static TextStyle style1 = GoogleFonts.raleway(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.white,
  );
  static TextStyle style2 = GoogleFonts.raleway(
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );
  static TextStyle style3 = GoogleFonts.raleway(
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );

  static TextStyle style4 = GoogleFonts.lato(
    fontWeight: FontWeight.normal,
    fontSize: 12,
  );
}
