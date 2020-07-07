import 'package:flutter/material.dart';

class StoryBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).copyWith().size.height * 0.15,
            ),
            Image.asset('images/leaf4.png'),
            SizedBox(
              height: MediaQuery.of(context).copyWith().size.height * 0.3,
            ),
            Image.asset('images/leaf1.png'),
            SizedBox(
              height: MediaQuery.of(context).copyWith().size.height * 0.15,
            ),
            RotationTransition(
              turns: AlwaysStoppedAnimation(250 / 360),
              child: Image.asset('images/leaf1.png'),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).copyWith().size.height * 0.2,
            ),
            Image.asset('images/leaf4.png'),
          ],
        ),
        Column(
          children: <Widget>[
            Image.asset('images/leaf1.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: Image.asset('images/leaf2.png'),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).copyWith().size.height * 0.2,
            ),
            RotationTransition(
              turns: AlwaysStoppedAnimation(180 / 360),
              child: Image.asset('images/leaf1.png'),
            ),
          ],
        ),
      ],
    );
  }
}
