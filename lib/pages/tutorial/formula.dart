import 'dart:math';

import 'package:flutter/material.dart';

class Formula extends StatefulWidget {
  Formula({Key key}) : super(key: key);

  @override
  _FormulaState createState() => _FormulaState();
}

class _FormulaState extends State<Formula> {
  //Map to keep score
  final Map<String, bool> score = {};

  //choice for game
  final Map choices = {
    '🍏': Colors.green,
    '🍋': Colors.yellow,
    '🍅': Colors.red,
    '🍇': Colors.purple,
    '🥥': Colors.brown,
    '🥕': Colors.orange
  };

  // Random seed to shuffle order of items.
  int seed = 0;

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
                      Text("Make Formula",
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
                          "Wash the pits and dry them. Harvest the most beautiful colors with the best formula.",
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
                child: (Image.asset("assets/images/balance.png"))),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                padding: EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
                child: Row(
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: choices.keys.map((emoji) {
                          return Draggable<String>(
                            data: emoji,
                            child: Emoji(
                                emoji: score[emoji] == true ? '✅' : emoji),
                            feedback: Emoji(emoji: emoji),
                            childWhenDragging: Emoji(emoji: '🌱'),
                          );
                        }).toList()),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: choices.keys
                          .map((emoji) => _buildDragTarget(emoji))
                          .toList()
                            ..shuffle(Random(seed)),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
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


  Widget _buildDragTarget(emoji) {
    return DragTarget<String>(
      builder: (BuildContext context, List<String> incoming, List rejected) {
        if (score[emoji] == true) {
          return Container(
            color: Colors.white,
            child: Text('Correct!'),
            alignment: Alignment.center,
            height: 80,
            width: 200,
          );
        } else {
          return Container(color: choices[emoji], height: 80, width: 200);
        }
      },
      onWillAccept: (data) => data == emoji,
      // onAccept: (data) {
      //   setState(() {
      //     score[emoji] = true;
      //     plyr.play('success.mp3');
      //   });
      // },
      onLeave: (data) {},
    );
  }
}

class Emoji extends StatelessWidget {
  Emoji({Key key, this.emoji}) : super(key: key);

  final String emoji;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        padding: EdgeInsets.all(10),
        child: Text(
          emoji,
          style: TextStyle(color: Colors.black, fontSize: 50),
        ),
      ),
    );
  }
}
