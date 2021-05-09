import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/sections/about/about.dart';
import 'package:portfolio/sections/portfolio/portfolio.dart';
import 'package:portfolio/widgets/navbar.dart';
import 'package:portfolio/widgets/sidebar.dart';

class NabBar extends StatelessWidget {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {    
    return NavbarWidet();
  }

  LayoutBuilder NavbarWidet() {
    return LayoutBuilder(builder: (context, he) {
      var width = MediaQuery.of(context).size.width;
      if (width > 760) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            NavbarItem(
                text: "Home",
                onTap: () {
                  scrollController.jumpTo(1);
                }),
            NavbarItem(text: "About", onTap: () {}),
            NavbarItem(text: "Services", onTap: () {}),
            NavbarItem(text: "Project", onTap: () {}),
            OutlineButton(
              onPressed: () {},
              child: Text("Resume"),
              hoverColor: Colors.red[400],
              borderSide: BorderSide(color: Colors.red),
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

  // Future _scrollToIndex(int index) async {
  //   await scrollController.scrollToIndex(index,
  //       preferPosition: AutoScrollPosition.begin);
  //   _autoScrollController.highlight(index);
  // }

  _leadingPart(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GlowText("VK",
              style: GoogleFonts.ubuntu(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                fontSize: 25,
              )),
          SideBar(),
        ],
      ),
    );
  }
}


