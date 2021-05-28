import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "03",
                    style: GoogleFonts.ubuntu(
                        color: kTextLightColor,
                        fontSize: 25,
                        letterSpacing: 1.5),
                  ),
                  Text(
                    "What's Next?",
                    style: GoogleFonts.ubuntu(
                        color: kTextLightColor,
                        fontSize: 18,
                        letterSpacing: 1.5),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Get In Touch",
                style: GoogleFonts.ubuntu(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                width: 550,
                child: Text(
                  khelloText,
                  style: GoogleFonts.ubuntu(
                      color: Colors.grey, fontSize: 18, letterSpacing: 1.2),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              OutlineButton(
                onPressed: () {},
                child: Text("Say Hi!"),
                hoverColor: kTextLightColor,
                borderSide: BorderSide(color: kTextLightColor),
              ),
            ],
          ),
        ),
        Text("Designed & Built by Vivek Khandelwal❤️ Flutter")
      ],
    );
  }
}
