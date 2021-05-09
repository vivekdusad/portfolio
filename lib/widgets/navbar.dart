import 'package:flutter/material.dart';

import 'package:portfolio/constants.dart';


class NavbarItem extends StatelessWidget {
  final String text;
  final Function onTap;

  const NavbarItem({Key key, @required this.text, @required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: onTap,
          child: Text(
            text,
            style: kNavBarTextStyle,
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
// Future _scrollToIndex(int index) async {
//     await _autoScrollController.scrollToIndex(index,
//         preferPosition: AutoScrollPosition.begin);
//     _autoScrollController.highlight(index);
//   }