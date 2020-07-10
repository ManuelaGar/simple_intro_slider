import 'package:flutter/material.dart';

class Intro1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 40.0),
            height: MediaQuery.of(context).size.height * 0.4,
            alignment: Alignment.topRight,
            child: Image.asset(
              'images/logo_cut.png',
              height: MediaQuery.of(context).size.height * 0.3,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            child: Text(
              'Healing Presents',
              style: TextStyle(
                color: Color(0xFF0066B1),
                fontFamily: 'PlaylistScript',
                fontSize: 40.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Es una app diseñada especialmente para pacientes con cancer. Basada terapias Mente-Cuerpo para mejorar la calidad de vida y el bienestar fisico, mental y emocional de quienes la utilizan.',
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w500,
                fontFamily: 'Belleza',
                fontSize: 18.0,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 30.0),
              height: 1.5,
              width: MediaQuery.of(context).size.width * 0.4,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
