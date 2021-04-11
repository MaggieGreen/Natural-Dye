import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';
import 'package:nima/nima_actor.dart';

class UsefulPart extends StatefulWidget {
  @override
  _UsefulPartState createState() => _UsefulPartState();
}

class _UsefulPartState extends State<UsefulPart> {
  String _currentAnimationName = "idle";
  bool _confirmbutton = false;
  bool _hasBeenPressed = false;
  // int _choice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFDFA),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFDFA),
        title: ProgressBar2(),
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
          // Padding(
          //     padding: const EdgeInsets.all(1.0),
          //     child: Container(
          //       padding: EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
          //       child: Column(
          //         children: [
          //           Text("Useful Part",
          //               style: TextStyle(
          //                 fontFamily: 'OpenSans',
          //                 color: Color(0XFF483C30),
          //                 fontSize: 30.0,
          //                 fontWeight: FontWeight.w700,
          //               )),
          //           SizedBox(
          //             height: 20.0,
          //           ),
          //           Text(
          //               "Although the avocado is delicious, if you select the wrong part, you can’t make the beautiful natural dye work.",
          //               style: TextStyle(
          //                 fontFamily: 'OpenSans',
          //                 color: Color(0XFF483C30),
          //                 fontSize: 16.0,
          //                 fontWeight: FontWeight.w400,
          //               )),
          //         ],
          //       ),
          //     )),
          Positioned.fill(
            top: -250,
            left: 24,
            right: 24,
            child: new NimaActor("assets/nima/avocado.nma",
                alignment: Alignment.center,
                fit: BoxFit.contain,
                animation: _currentAnimationName,
                mixSeconds: 0.5, completed: (String currentAnimationName) {
              setState(() {
                // Return to idle.
                _currentAnimationName = "idle";
              });
            }),
          ),
          Positioned.fill(
            top: 500,
            // left: 24,
            // right: 24,
            child: Container(
              color: Colors.transparent,
              child: new Container(
                decoration: new BoxDecoration(
                    color: Color(0XFFE5DCD2),
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(40.0),
                    )),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                      child: Text("Choose the color you want to dye",
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Color(0XFF483C30),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 90,
                            width: 90,
                            margin: const EdgeInsets.fromLTRB(15, 26, 15, 35),
                            child: FlatButton(
                                child: Text(
                                  "Avocado\nPink",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.6,
                                  ),
                                ),
                                textColor: Color(0XFF483C30),
                                color: _hasBeenPressed
                                    ? Color(0xFFDBA99D)
                                    : Color(0xFFFDF9F3),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                onPressed: () {
                                  setState(() {
                                    _currentAnimationName = "jump";
                                    _confirmbutton = true;
                                    _hasBeenPressed = !_hasBeenPressed;
                                  });
                                })),
                        Container(
                            height: 90,
                            width: 90,
                            margin: const EdgeInsets.fromLTRB(15, 26, 15, 35),
                            child: FlatButton(
                                child: Text(
                                  "Marigold\nYellow",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.6,
                                  ),
                                ),
                                textColor: Color(0XFF483C30),
                                color: Color(0XFFFDF9F3),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                onPressed: () {
                                  setState(() {
                                    _currentAnimationName = "attack";
                                    _confirmbutton = false;
                                  });
                                })),
                        Container(
                            height: 90,
                            width: 90,
                            margin: const EdgeInsets.fromLTRB(15, 26, 15, 35),
                            child: FlatButton(
                                child: Text(
                                  "Indigo\nBlue",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.6,
                                  ),
                                ),
                                textColor: Color(0XFF483C30),
                                color: Color(0XFFFDF9F3),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                onPressed: () {
                                  setState(() {
                                    // _choice = 3;
                                    _currentAnimationName = "attack";
                                    _confirmbutton = false;
                                  });
                                })),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
              top: 670,
              left: 24,
              right: 24,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      child: FlatButton(
                          // enabled: _choice == 0 ? false : true,
                          onPressed: (_confirmbutton)
                              ? () => {
                                    Navigator.pushNamed(
                                        context, '/tutorial/processing')
                                  }
                              : null,
                          color: Color(0XFF866A50),
                          disabledColor: Color(0XFFC7BCB2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            "Next",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.6,
                                fontFamily: 'OpenSans',
                                color: Colors.white),
                          )),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(20),
                      // ),
                    ),
                  )
                ],
              ))
        ],
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
        // The size box provides an immediate spacing between the widgets
        Image.asset(
          "assets/images/process1.png",
          width: 240,
        )
      ],
    );
  }
}

// https://github.com/2d-inc/Nima-Flutter/blob/master/example/hop/lib/main.dart
