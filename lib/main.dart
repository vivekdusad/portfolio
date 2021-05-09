import 'package:flutter/material.dart';
import 'package:portfolio/sections/home/home.dart';
import 'package:portfolio/sections/navbar/navBarLogo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        
          scaffoldBackgroundColor: Color(0xfe0A192F),
          appBarTheme: AppBarTheme(color: Color(0xfe0A192F))),
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}
