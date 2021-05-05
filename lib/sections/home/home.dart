import 'package:flutter/material.dart';
import 'package:portfolio/sections/navbar/navBarLogo.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: Container(
              color: Colors.white,
              child: ListView(
                children: [
                  NabBar(),
                ],
              ))),
    );
  }
}
