import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:intro_carrusel/screens/intro3.dart';
import 'package:intro_carrusel/screens/intro1.dart';
import 'package:intro_carrusel/screens/intro2.dart';
import 'package:intro_carrusel/components/skip_next_btn.dart';
import 'package:intro_carrusel/screens/how_to_meditate_screen.dart';

class IntroCarousel extends StatefulWidget {
  @override
  _IntroCarouselState createState() => _IntroCarouselState();
}

class _IntroCarouselState extends State<IntroCarousel> {
  int slideIndex = 0;
  PageController controller;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 8.0,
      width: isCurrentPage ? 10.0 : 8.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Color(0xFF0066B1) : Color(0xFFB8CEDB),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD1E7F4),
      body: Stack(
        alignment: Alignment(1, 1),
        children: <Widget>[
          Container(
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  slideIndex = index;
                });
              },
              children: <Widget>[
                Intro1(),
                Intro2(),
                Intro3(),
              ],
            ),
          ),
          Container(
            color: Colors.transparent,
            padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Opacity(
                  opacity: slideIndex == 1 ? 1 : 0,
                  child: SkipNextBtn(
                      controller: controller,
                      icon: Icons.navigate_before,
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HowToMeditateScreen()));
                      }),
                ),
                Container(
                  child: Row(
                    children: [
                      for (int i = 0; i < 3; i++)
                        i == slideIndex
                            ? _buildPageIndicator(true)
                            : _buildPageIndicator(false),
                    ],
                  ),
                ),
                SkipNextBtn(
                  controller: controller,
                  icon: Icons.navigate_next,
                  onPress: () {
                    if (slideIndex != 2) {
                      controller.animateToPage(slideIndex + 1,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.linear);
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HowToMeditateScreen()));
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
