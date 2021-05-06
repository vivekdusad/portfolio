import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:get/get.dart';
import 'package:portfolio/widgets/sidebar.dart';

class NabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _leadingPart(context),
          _homeBody(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [_trailingPart()],
          )
        ],
      ),
    );
  }

  _leadingPart(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GlowText("Vivek",
            style: GoogleFonts.ubuntu(
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
              fontSize: 25,
            )),
        SideBar(),
      ],
    );
  }

  _trailingPart() {
    return LayoutBuilder(builder: (context, he) {
      var width = MediaQuery.of(context).size.width;
      if (width > 760) {
        return Row(
          children: [
            Text("Home", style: kNavBarTextStyle),
            SizedBox(
              width: 20,
            ),
            Text("About", style: kNavBarTextStyle),
            SizedBox(
              width: 20,
            ),
            Text("Services", style: kNavBarTextStyle),
            SizedBox(
              width: 20,
            ),
            Text("Projects", style: kNavBarTextStyle),
            SizedBox(
              width: 20,
            ),
            Text("Contact", style: kNavBarTextStyle),
            SizedBox(
              width: 20,
            ),
          ],
        );
      }
      return OutlineButton(
        onPressed: () {},
        child: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        color: Colors.white,
      );
    });
  }
}

class _homeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hi", style: kHomeTextStyle),
          Text(
            "My Name is Vivek",
            style: kHomeTextStyle,
          ),
          Text(
            "I Love to develop Things which are Live on Internet",
            style: GoogleFonts.roboto(color: kTextColor),
          )
        ],
      ),
    );
  }
}
