import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle kNavBarTextStyle = GoogleFonts.ubuntu(
  fontWeight: FontWeight.bold,
  letterSpacing: 1.5,
  fontSize: 15,
  // decoration: TextDecoration.underline,
);

TextStyle kHomeTextStyle = GoogleFonts.ubuntu(
    fontSize: 50, fontWeight: FontWeight.bold, letterSpacing: 1.5);
const kTextColor = Color(0xFF707070);
const kTextLightColor = Color(0xFF555555);

const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: Offset(0, 50),
  blurRadius: 50,
  color: Color(0xFF0700B1).withOpacity(0.15),
);

final kDefaultCardShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1),
);

// TextField dedign
final kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);

final kDefaultOutlineInputBorder = OutlineInputBorder(
  // Maybe flutter team need to fix it on web
  // borderRadius: BorderRadius.circular(50),
  borderSide: BorderSide(
    color: Color(0xFFCEE4FD),
  ),
);
