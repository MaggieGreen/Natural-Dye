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
  // int _choice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3ECE3),
      appBar: AppBar(
        backgroundColor: Color(0xFFF3ECE3),
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
          Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                padding: EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
                child: Column(
                  children: [
                    Text("Useful Part",
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
                        "Although the avocado is delicious, if you select the wrong part, you can’t make the beautiful natural dye work.",
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Color(0XFF483C30),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
              )),
          Positioned.fill(
            top: -100,
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
            top: 550,
            // left: 24,
            // right: 24,
            child: Container(
              color: Colors.transparent,
              child: new Container(
                decoration: new BoxDecoration(
                    color: Color(0XFFFEF8F2),
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
                      child: Text("Choose the most useful dye part",
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
                            margin: const EdgeInsets.all(15.0),
                            child: FlatButton(
                                child: Text("Skin"),
                                textColor: Color(0XFF483C30),
                                color: Color(0XFFD8E2C1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                onPressed: () {
                                  setState(() {
                                    _currentAnimationName = "jump";
                                    _confirmbutton = false;
                                  });
                                })),
                        Container(
                            margin: const EdgeInsets.all(15.0),
                            child: FlatButton(
                                child: Text("Meat"),
                                textColor: Color(0XFF483C30),
                                color: Color(0XFFD8E2C1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                onPressed: () {
                                  setState(() {
                                    _currentAnimationName = "attack";
                                    _confirmbutton = false;
                                  });
                                })),
                        Container(
                            margin: const EdgeInsets.all(15.0),
                            child: FlatButton(
                                child: Text("Pits"),
                                textColor: Color(0XFF483C30),
                                color: Color(0XFFD8E2C1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                onPressed: () {
                                  setState(() {
                                    // _choice = 3;
                                    _currentAnimationName = "attack";
                                    _confirmbutton = true;
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
              top: 620,
              left: 24,
              right: 24,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 64,
                      child: FlatButton(
                          // enabled: _choice == 0 ? false : true,
                          onPressed: (_confirmbutton)
                              ? () => {
                                    Navigator.pushNamed(
                                        context, '/tutorial/formula')
                                  }
                              : null,
                          color: Color(0XFF96A97C),
                          disabledColor: Color(0XFFF3ECE3),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "Confirm",
                            style: TextStyle(color: Colors.white),
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

// https://github.com/2d-inc/Nima-Flutter/blob/master/example/hop/lib/main.dart
