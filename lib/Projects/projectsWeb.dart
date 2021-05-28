import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectsWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Text("Projects",
                style: GoogleFonts.poppins(fontSize: 30, letterSpacing: 1.2)),
          ),
          Expanded(
            flex: 5,
            child: Wrap(
              children: [
                Content(),
                Content(),
                Content(),
                Content(),
                Content(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 350,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/first.jpg",
            fit: BoxFit.fill,
          ),
          Text("City Master",
              style: GoogleFonts.poppins(fontSize: 20, letterSpacing: 1.2)),
          Text("Flutter",
              style: GoogleFonts.poppins(fontSize: 12, letterSpacing: 1.2)),
        ],
      ),
    );
  }
}

class body extends StatelessWidget {
  const body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        mainAxisExtent: 1,
        maxCrossAxisExtent: 3,
      ),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Container(
          height: 200,
          width: 200,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/first.jpg",
                height: 100,
                width: 100,
                fit: BoxFit.fill,
              ),
              Text("City Master",
                  style: GoogleFonts.poppins(fontSize: 20, letterSpacing: 1.2)),
              Text("Flutter",
                  style: GoogleFonts.poppins(fontSize: 12, letterSpacing: 1.2)),
            ],
          ),
        );
      },
    );
  }
}
