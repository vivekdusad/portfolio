import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';

class NabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_leadingPart(), _trailingPart()],
      ),
    );
  }

  _leadingPart() {
    return Text("Vivek",
        style: GoogleFonts.ubuntu(
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
          fontSize: 25,
        ));
  }

  _trailingPart() {
    return Row(
      children: [
        Text("Home",
            style: kNavBarTextStyle),
        SizedBox(
          width: 10,
        ),
        Text("About",
             style: kNavBarTextStyle),
        SizedBox(
          width: 10,
        ),
        Text("Services",
             style: kNavBarTextStyle),
        SizedBox(
          width: 10,
        ),
        Text("Projects",
             style: kNavBarTextStyle),
        SizedBox(
          width: 10,
        ),
        Text("Contact",
             style: kNavBarTextStyle),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
