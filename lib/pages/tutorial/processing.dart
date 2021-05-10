import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';
import 'package:nima/nima_actor.dart';
import 'package:onboarding_flutter/pages/tutorial/prepare.dart';

class Processing extends StatefulWidget {
  @override
  _ProcessingState createState() => _ProcessingState();
}

class _ProcessingState extends State<Processing> {
  bool _hasBeenPressed = false;

  var _itemImage = [
    Image.asset(
      "assets/images/process1.png",
    ),
    Image.asset(
      "assets/images/3plants_marigold.gif",
    ),
    Image.asset(
      "assets/images/process2.png",
    )
  ];

  int index = 0;

  tmpFunction() {
    Container(
      child: _itemImage[index],
      width: 328,
    );
  }

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
          Positioned.fill(
              top: -250,
              left: 24,
              right: 24,
              child: Container(
                child: _itemImage[index],
                width: 328,
              )),
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
                            margin: const EdgeInsets.fromLTRB(30, 26, 30, 35),
                            child: FlatButton(
                                child: Text(
                                  "Pits",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.6,
                                  ),
                                ),
                                textColor: Color(0XFF483C30),
                                color: _hasBeenPressed
                                    ? Color(0xFFDEC6A3)
                                    : Color(0xFFFDF9F3),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                onPressed: () {
                                  setState(() {
                                    index = 1;
                                    _hasBeenPressed = !_hasBeenPressed;
                                  });
                                })),
                        Container(
                            height: 90,
                            width: 90,
                            margin: const EdgeInsets.fromLTRB(30, 26, 30, 35),
                            child: FlatButton(
                                child: Text(
                                  "Skin",
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
                                    index = 2;
                                    _hasBeenPressed = !_hasBeenPressed;
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
                          onPressed: (_hasBeenPressed)
                              ? () => {
                                    // Navigator.pushNamed(
                                    //     context, '/tutorial/prepare')
                                    Navigator.pushReplacement(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder:
                                            (context, animation1, animation2) =>
                                                Prepare(),
                                        transitionDuration:
                                            Duration(seconds: 0),
                                      ),
                                    )
                                  }
                              : () => {},
                          color: Color(0XFF866A50),
                          disabledColor: Color(0XFFC7BCB2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            "Confirm",
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
          "assets/images/process2.png",
          width: 240,
        )
      ],
    );
  }
}
