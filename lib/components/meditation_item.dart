import 'package:flutter/material.dart';

class MeditationItem extends StatelessWidget {
  MeditationItem({this.image, this.title, this.content});

  final String image;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    bool isLargeScreen =
        MediaQuery.of(context).copyWith().size.width > 600 ? true : false;

    return Padding(
      padding: EdgeInsets.fromLTRB(0, 15.0, 15.0, 10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100.0,
                width: 100.0,
                child: Stack(
                  alignment: Alignment(0, 0),
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFd9d9d9).withOpacity(0.5),
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        image,
                        width: 80.0,
                        height: 80.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: isLargeScreen ? 12.0 : 15.0,
                        fontFamily: 'Kollektif',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF6a9636),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      content,
                      style: TextStyle(
                        fontSize: isLargeScreen ? 12.0 : 15.0,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
