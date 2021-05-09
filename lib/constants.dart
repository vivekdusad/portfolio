import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle kNavBarTextStyle = GoogleFonts.ubuntu(
    fontWeight: FontWeight.bold,
    letterSpacing: 1.5,
    fontSize: 15,
    color: Colors.white
    // decoration: TextDecoration.underline,
    );

TextStyle kHomeTextStyle = GoogleFonts.ubuntu(
    fontSize: 50, fontWeight: FontWeight.bold, letterSpacing: 1.5);
const kTextColor = Color(0xFF707070);
const kTextLightColor = Color(0xff61F9D5);

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

const kbodyfirstText =
    "Hello! I'm Vivek, a Student in NIT HAMIRPUR,IN.\n\nI enjoy creating things that live on the internet, My goal is to always\n build products that provide pixel-perfect, performant experiences.\n\n";
const kbodySecond =
    "Currently, I am purshuing my Bachlor's degree in Electronics\n and Communication Engineering at  NIT HAMIRPUR, as well\n as doing work on Flutter where I work on a wide variety of\n interesting and meaningful projects on a daily basis.\n\n";
const khelloText =
    "My inbox is always open.Wheather you have a Question or just want to say hi,I'll try my best to get back to you";
