import 'package:flutter/material.dart';

class SkipNextBtn extends StatelessWidget {
  final PageController controller;
  final String btnText;
  final Function onPress;

  SkipNextBtn(
      {@required this.controller,
      @required this.btnText,
      @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPress,
      splashColor: Colors.blue[50],
      child: Text(
        btnText,
        style: TextStyle(color: Color(0xFF0066B1), fontWeight: FontWeight.w600),
      ),
      color: Color(0x330066B1),
      highlightColor: Color(0xFF0066B1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
