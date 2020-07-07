import 'package:flutter/material.dart';

import 'package:intro_carrusel/components/meditation_item.dart';
import 'package:intro_carrusel/constants/story_background.dart';

class HowToMeditateScreen extends StatefulWidget {
  static const id = 'how_to_meditate_screen';

  @override
  _HowToMeditateScreenState createState() => _HowToMeditateScreenState();
}

class _HowToMeditateScreenState extends State<HowToMeditateScreen> {
  ScrollController _scrollController;
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          StoryBackground(),
          NotificationListener<ScrollNotification>(
            onNotification: (scrollNotification) {
              if (scrollNotification is ScrollStartNotification ||
                  scrollNotification is ScrollUpdateNotification) {
                setState(() {
                  _isVisible = false;
                });
              } else if (scrollNotification is ScrollEndNotification) {
                setState(() {
                  _isVisible = true;
                });
              }
              return;
            },
            child: ListView(
              controller: _scrollController,
              padding: EdgeInsets.only(top: 50.0),
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text(
                    'How to Meditate',
                    style: TextStyle(
                      fontFamily: 'PlaylistScript',
                      fontSize: 55.0,
                      color: Color(0xFF5291ef),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 20.0),
                  child: Text(
                    'YOU DON\'T NEED TO BE AN EXPERT, JUST BREATHE, FOCUS AND RELAX!',
                    style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 18.0,
                      color: Color(0xFF0066b1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  color: Color(0xFF5291ef).withOpacity(0.05),
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  margin: EdgeInsets.only(bottom: 10.0),
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                'The meditations in this app are created with scientifically proven ',
                          ),
                          TextSpan(
                            text: 'Mind-Body therapies',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                ' that will help you relax. \n\n Research has found numerous ',
                          ),
                          TextSpan(
                            text: 'meditation benefits:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                ' it can help with stress reduction, fatigue, anxiety, improve quality of life, wellbeing, physical and mental health; it can reduce insomnia, pain, nausea and other symptoms resulting during this important journey.',
                          ),
                        ],
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black87,
                        ),
                      )),
                ),
                MeditationItem(
                  image: 'images/step1.png',
                  title: 'COMFORTABLE POSITION',
                  content: 'Sit on the floor or a chair.\nStay still.',
                ),
                MeditationItem(
                  image: 'images/step2.png',
                  title: 'SAME TIME AND PLACE',
                  content:
                      'Meditate in a quiet space. Be constant with the time and place.',
                ),
                MeditationItem(
                  image: 'images/step3.png',
                  title: 'CLOSE YOUR EYES',
                  content:
                      'Connect with your inner self and the present moment.',
                ),
                MeditationItem(
                  image: 'images/step4.png',
                  title: 'DEEP BREATHS',
                  content:
                      'Observe your breath. Breathe through your nose at a deep and slow pace.',
                ),
                MeditationItem(
                  image: 'images/step5.png',
                  title: 'BE PATIENT',
                  content:
                      'If concentration is lost, observe without judgment. Then focus again on your breath.',
                ),
                MeditationItem(
                  image: 'images/step6.png',
                  title: 'REPEAT',
                  content: 'Recurrent practice calms the mind.',
                ),
                MeditationItem(
                  image: 'images/step7.png',
                  title: 'FEEL YOURSELF, BE GRATEFUL',
                  content:
                      'Your energy has changed, be grateful for the generous present moment.',
                ),
                Container(
                  color: Color(0xFFd6e0ef),
                  padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 70.0),
                  margin: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: <Widget>[
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'The body-mind therapies can help ',
                            ),
                            TextSpan(
                              text: 'complement to your treatment',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  '. As you perform them frequently, they begin to be more effective for your health.\n\nThere are many',
                            ),
                            TextSpan(
                              text: ' meditation techniques',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  ' that evoke mind and body relaxation. We invite you to try them and calmly figure out which one works better for you.',
                            ),
                          ],
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: AnimatedOpacity(
        opacity: _isVisible ? 1.0 : 0.0,
        duration: Duration(milliseconds: 200),
        child: FloatingActionButton(
          onPressed: () {
            print('pressed');
          },
          tooltip: 'Increment',
          child: Icon(Icons.navigate_next),
        ),
      ),
    );
  }
}
