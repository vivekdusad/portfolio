import 'package:flutter/material.dart';
import 'package:portfolio/sections/about/about.dart';
import 'package:portfolio/sections/navbar/navBarLogo.dart';
import 'package:portfolio/sections/portfolio/portfolio.dart';
import 'package:portfolio/widgets/sidebar.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          NabBar(),
          About(),
          Portfolio(),
        ],
      ),
    );
  }
}
