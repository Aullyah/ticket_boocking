// import 'package:flutter/material.dart';
// import 'package:ticket_booking_app/common/color_palettes.dart';

// class Themes {
//   // Styling for Text
//   static TextTheme _myTextTheme = TextTheme(
//       headline1: TextStyle(
//           fontSize: 92, fontWeight: FontWeight.w300, letterSpacing: -1.5),
//       headline2: TextStyle(
//           fontSize: 57, fontWeight: FontWeight.w300, letterSpacing: -0.5),
//       headline3: TextStyle(fontSize: 46, fontWeight: FontWeight.w400),
//       headline4: TextStyle(
//           fontSize: 32, fontWeight: FontWeight.w400, letterSpacing: 0.25),
//       headline5: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
//       headline6: TextStyle(
//           fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
//       subtitle1: TextStyle(
//           fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.15),
//       subtitle2: TextStyle(
//           fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
//       bodyText1: TextStyle(
//           fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
//       bodyText2: TextStyle(
//           fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
//       button: TextStyle(
//           fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
//       caption: TextStyle(
//           fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
//       overline: TextStyle(
//           fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5));

//   // Styling for light theme
//   static ThemeData lightTheme = ThemeData(
//     backgroundColor: ColorPalettes.lightBG,
//     primaryColor: ColorPalettes.lightPrimary,
//     dividerColor: ColorPalettes.darkBG,
//     scaffoldBackgroundColor: ColorPalettes.lightBG,
//     textTheme: _myTextTheme,
//     appBarTheme: AppBarTheme(
//         textTheme: _myTextTheme.apply(bodyColor: ColorPalettes.darkPrimary),
//         elevation: 0),
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       selectedItemColor: ColorPalettes.lightAccent,
//       unselectedItemColor: Colors.grey,
//     ),
//     buttonTheme: ButtonThemeData(
//       buttonColor: ColorPalettes.lightAccent,
//       textTheme: ButtonTextTheme.primary,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(Radius.circular(0)),
//       ),
//     ),
//   );

//   // Styling for dark theme
//   static ThemeData darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     backgroundColor: ColorPalettes.darkBG,
//     primaryColor: ColorPalettes.darkPrimary,
//     accentColor: ColorPalettes.darkAccent,
//     cursorColor: ColorPalettes.darkAccent,
//     dividerColor: ColorPalettes.lightBG,
//     scaffoldBackgroundColor: ColorPalettes.darkBG,
//     textTheme: _myTextTheme,
//     appBarTheme: AppBarTheme(
//         textTheme: _myTextTheme.apply(bodyColor: ColorPalettes.lightPrimary),
//         elevation: 0),
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       selectedItemColor: ColorPalettes.darkAccent,
//       unselectedItemColor: Colors.grey,
//     ),
//     buttonTheme: ButtonThemeData(
//       buttonColor: ColorPalettes.darkAccent,
//       textTheme: ButtonTextTheme.primary,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(Radius.circular(0)),
//       ),
//     ),
//   );
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double defaultMargin = 24;

Color mainColor = Color(0xFF3E548D);
Color accentColor1 = Color(0xFF8DB8BD);
Color accentColor2 = Color(0xFF455A64);
Color accentColor3 = Color(0xFFADA5BD);
Color accentColor4 = Color(0xFFD84130);

TextStyle titleTextFont = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontWeight: FontWeight.w600);
TextStyle blackTextFont = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontWeight: FontWeight.w500);
TextStyle whiteTextFont = GoogleFonts.poppins()
    .copyWith(color: Colors.white, fontWeight: FontWeight.w500);
TextStyle purpleTextFont = GoogleFonts.poppins()
    .copyWith(color: mainColor, fontWeight: FontWeight.w500);
TextStyle greyTextFont = GoogleFonts.poppins()
    .copyWith(color: accentColor3, fontWeight: FontWeight.w500);

TextStyle whiteNumberFont =
    GoogleFonts.openSans().copyWith(color: Colors.white);
TextStyle yellowNumberFont =
    GoogleFonts.openSans().copyWith(color: accentColor2);
