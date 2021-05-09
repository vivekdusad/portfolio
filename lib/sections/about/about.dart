import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio/constants.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          Wrap(
            alignment: WrapAlignment.start,
            direction: Axis.vertical,
            children: [
              Row(
                children: [
                  Text("01",
                      style: GoogleFonts.ubuntu(
                        fontSize: 20,
                        color: Color(0xff61F9D5),
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "About Me",
                    style: GoogleFonts.ubuntu(
                      fontSize: 26.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  Container(
                    width: size.width / 4,
                    height: 1.10,
                    color: Color(0xff303C55),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                kbodyfirstText,
                style: GoogleFonts.ubuntu(
                  fontSize: 16.0,
                  color: Color(0xff828DAA),
                  letterSpacing: 0.75,
                ),
              ),
              Text(
                kbodySecond,
                style: GoogleFonts.ubuntu(
                  fontSize: 16.0,
                  color: Color(0xff828DAA),
                  letterSpacing: 0.75,
                ),
              ),
              Text(
                "Here are few Feilds i've been working with recently:",
                style: GoogleFonts.ubuntu(
                  fontSize: 16.0,
                  color: Color(0xff828DAA),
                  letterSpacing: 0.75,
                ),
              ),
              DoubleTable()
            ],
          ),
          _image(),
        ],
      ),
    );
  }

  _image() {
    return Container(
      height: 500,
      width: 500,
      padding: EdgeInsets.all(20),
      child: Image.asset("/vivek.jpg"),
    );
  }
}

class DoubleTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      
      
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Technology(text: "Dart"),
            Technology(text: "Flutter"),
            Technology(text: "Firebase"),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Technology(text: "C++"),
            Technology(text: "Data Structures and Algorithms"),
            Technology(text: "Java"),
          ],
        ),
      ],
    );
  }
}

class Technology extends StatelessWidget {
  final String text;
  const Technology({
    Key key,
    @required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FaIcon(
          FontAwesomeIcons.arrowAltCircleRight,
          color: Color(0xff61F9D5),
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          text,
          style: GoogleFonts.ubuntu(
            fontSize: 16.0,
            color: Color(0xff828DAA),
            letterSpacing: 0.75,
          ),
        )
      ],
    );
  }
}
