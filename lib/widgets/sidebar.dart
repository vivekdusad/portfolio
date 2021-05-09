import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _socialLinks(
            FaIcon(FontAwesomeIcons.github), "https://www.google.com/"),
        _socialLinks(
            FaIcon(FontAwesomeIcons.twitter), "https://www.google.com/"),
        _socialLinks(
            FaIcon(FontAwesomeIcons.linkedinIn), "https://www.google.com/"),
        _socialLinks(
            FaIcon(FontAwesomeIcons.mailBulk), "https://www.google.com/"),
        Container(
          height: 100,
          width: 2,
          color: Colors.grey,
        )
      ],
    );
  }

  _socialLinks(FaIcon home, String url) {
    return Opacity(
      opacity: 0.8,
      child: IconButton(
        icon: home,
        iconSize: 20,
        onPressed: () async {
          await canLaunch(url)
              ? await launch(url)
              : throw 'Could not launch $url';
        },
      ),
    );
  }
}
