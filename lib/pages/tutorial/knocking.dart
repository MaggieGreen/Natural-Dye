import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Knocking extends StatefulWidget {
  @override
  _KnockingState createState() => _KnockingState();
}

class _KnockingState extends State<Knocking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3ECE3),
      appBar: AppBar(
        backgroundColor: Color(0xFFF3ECE3),
        // title: ProgressBar2(),
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
      body: Stack(
        children: [
          Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                padding: EdgeInsets.fromLTRB(34.0, 24.0, 34.0, 0),
                child: Column(
                  children: [
                    Text("Knocking",
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Color(0XFF483C30),
                          fontSize: 30.0,
                          fontWeight: FontWeight.w700,
                        )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                        "When seeds dance around the liquid, slowly knocking into each other.",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.6,
                            fontFamily: 'OpenSans',
                            color: Color(0xFF483C30))),
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              padding: EdgeInsets.fromLTRB(34.0, 240.0, 34.0, 0),
              child: GestureDetector(
                onTap: () => {Navigator.pushNamed(context, '/tutorial/filter')},
                child: Container(
                  height: 380.0,
                  width: 330.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/knocking.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Positioned.fill(
          //   top: 100,
          //   left: 24,
          //   right: 24,
          //   child: GestureDetector(
          //     onTap: () =>
          //         {Navigator.pushNamed(context, '/tutorial/boil_method')},
          //     child: Container(
          //       width: 300,
          //       child: Lottie.asset("assets/lottie/testonboarding.json",
          //           repeat: true, reverse: false),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
