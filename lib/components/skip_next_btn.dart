import 'dart:ui';

import 'package:flutter/material.dart';

class SkipNextBtn extends StatelessWidget {
  final PageController controller;
  final IconData icon;
  final Function onPress;

  SkipNextBtn(
      {@required this.controller, @required this.icon, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 40,
      alignment: Alignment.center,
      child: FlatButton(
        onPressed: onPress,
        splashColor: Colors.blue[50],
        child: Icon(
          icon,
          size: 30.0,
          color: Color(0xFF0066B1),
        ),
        color: Color(0xFFB8CEDB).withOpacity(0.7),
        highlightColor: Color(0xFF0066B1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
