import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Puzzle extends StatefulWidget {
  @override
  _PuzzleState createState() => _PuzzleState();
}

class _PuzzleState extends State<Puzzle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDFA),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFDFA),
        title: ProgressBar2(),
        iconTheme: IconThemeData(color: Color(0xFF483C30)),
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(Icons.view_list),
        //     onPressed: () {
        //       print('TutorialMenu');
        //     },
        //   )
        // ],
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            GestureDetector(
              onTap: () =>
                  {Navigator.pushNamed(context, '/tutorial/useful_part')},
              child: Container(
                height: 380.0,
                width: 330.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/intro.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              // child: Container(
              //   width: 300,
              //   child: Lottie.asset("assets/lottie/testonboarding.json",
              //       repeat: true, reverse: false),
              // ),
            ),
            SizedBox(
              height: 110.0,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      child: FlatButton(
                          onPressed: () => {
                                Navigator.pushNamed(
                                    context, '/tutorial/tutorial_open')
                              },
                          child: Text(
                            "Finish",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.6,
                                fontFamily: 'OpenSans',
                                color: Colors.white),
                          )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF866A50),
                            // Color(0xFFD4C2A3),
                            Color(0xFF866A50),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProgressBar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // centers horizontally
      crossAxisAlignment: CrossAxisAlignment.center, // centers vertically
      children: [
        Image.asset(
          "assets/images/process6.png",
          width: 240,
        )
      ],
    );
  }
}
