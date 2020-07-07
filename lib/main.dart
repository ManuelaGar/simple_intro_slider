import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int slideIndex = 0;
  PageController controller;
  bool isSkipVisible = true;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 8.0 : 6.0,
      width: isCurrentPage ? 8.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Color(0xFF0066B1) : Color(0x550066B1),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    controller = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD1E7F4),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.925,
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              slideIndex = index;
            });
          },
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/baobab.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/baobab.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFD1E7F4),
                image: DecorationImage(
                  image: AssetImage('images/leaves.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Color(0xFFB8CEDB),
        padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Opacity(
              opacity: slideIndex != 2 ? 1 : 0,
              child: FlatButton(
                onPressed: () {
                  controller.animateToPage(2,
                      duration: Duration(milliseconds: 400),
                      curve: Curves.linear);
                },
                splashColor: Colors.blue[50],
                child: Text(
                  "SKIP",
                  style: TextStyle(
                      color: Color(0xFF0066B1), fontWeight: FontWeight.w600),
                ),
                color: Color(0x330066B1),
                highlightColor: Color(0xFF0066B1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
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
            FlatButton(
              onPressed: () {
                print("this is slideIndex: $slideIndex");
                controller.animateToPage(slideIndex + 1,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.linear);
              },
              splashColor: Colors.blue[50],
              child: Text(
                "NEXT",
                style: TextStyle(
                    color: Color(0xFF0066B1), fontWeight: FontWeight.w600),
              ),
              color: Color(0x330066B1),
              highlightColor: Color(0xFF0066B1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
