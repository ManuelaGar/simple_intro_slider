import 'package:flutter/material.dart';

class Intro3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFD1E7F4),
        image: DecorationImage(
          image: AssetImage('images/leaves.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 50.0),
            child: Text(
              'TU SALUD FÍSICA,\nMENTAL Y EMOCIONAL',
              style: TextStyle(
                color: Color(0xFF0066B1),
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: Text(
              'Esta es una herramienta de acompañamiento durante tu enfermedad que te ayudará a crear estados de relajación frecuente, generando a su vez sensaciones de paz, calma, tranquilidad, salud y bienestar.',
              style: TextStyle(
                color: Colors.black54,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
                fontSize: 17.0,
                height: 1.2,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Image.asset(
            'images/logo.png',
            height: MediaQuery.of(context).size.height * 0.3,
          ),
        ],
      ),
    );
  }
}
