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
      backgroundColor: const Color(0xFFF3ECE3),
      appBar: AppBar(
        backgroundColor: Color(0xFFF3ECE3),
        title: ProgressBar(),
        iconTheme: IconThemeData(color: Color(0xFF483C30)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.view_list),
            onPressed: () {
              print('TutorialMenu');
            },
          )
        ],
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 74.0,
            ),
            Text("Avocado",
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  color: Color(0XFF483C30),
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                )),
            Padding(
              padding: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0.0),
              child: Text(
                  "Raise your hand if you love pink and avocados. Combine those loves with this super easy DIY!",
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Color(0XFF483C30),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              width: 300,
              child: Lottie.asset("assets/lottie/testonboarding.json",
                  repeat: true, reverse: false),
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
                      height: 64,
                      child: FlatButton(
                          onPressed: () => {
                                Navigator.pushNamed(
                                    context, '/tutorial/useful_part')
                              },
                          child: Text(
                            "Confirm",
                            style: TextStyle(color: Colors.white),
                          )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF96A97C),
                            // Color(0xFFD4C2A3),
                            Color(0xFF96A97C),
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

class ProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // centers horizontally
      crossAxisAlignment: CrossAxisAlignment.center, // centers vertically
      children: [
        Text("Progress",
            style: TextStyle(
              fontFamily: 'OpenSans',
              color: Color(0XFF483C30),
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            )),
        SizedBox(
          width: 3,
        ), // The size box provides an immediate spacing between the widgets
        Image.asset(
          "assets/images/logo.png",
          width: 40,
        )
      ],
    );
  }
}
