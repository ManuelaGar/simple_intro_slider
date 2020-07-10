import 'package:flutter/material.dart';

class Intro2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.fromLTRB(15.0, 100.0, 15.0, 80.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/baobab.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'BAOBAB',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    height: 1.5,
                    width: MediaQuery.of(context).size.width * 0.35,
                    color: Color(0xFF0066B1),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10.0),
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text(
                    'Es el árbol que ves en nuestro logo.\nCrece en tierras áridas y secas, y refleja la resiliencia, la belleza y la vida.',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                RotatedBox(
                  child: Image.asset('images/baobab_leaf.png'),
                  quarterTurns: 1,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 20.0),
                  child: Text(
                    'Cuando utilices esta app, recuerda que tu fortaleza y resiliencia pueden ser tan grandes como un Baobab.',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      fontSize: 17.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    height: 1.5,
                    width: MediaQuery.of(context).size.width * 0.3,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//Ya que en medio de un ambiente árido y seco es capaz de almacenar abuntante agua y seguir fortaleciendose en medio de la dificultad.
