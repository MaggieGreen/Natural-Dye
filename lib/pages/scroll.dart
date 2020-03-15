import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Scroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    textStyle() {
      return new TextStyle(color: Colors.black, fontSize: 30.0);
    }

    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            "Gallery",
            style: TextStyle(color: Color(0XFFFFFFFF)),
          ),
          backgroundColor: Color(0xFF777E65),
          elevation: 0,
          bottom: new TabBar(
            tabs: <Widget>[
              new Tab(
                text: "History",
              ),
              new Tab(
                text: "Modern Art",
              ),
              new Tab(
                text: "Fashion",
              ),
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new Container(
              color: Colors.deepOrangeAccent,
              child: new Center(
                child: Image.asset('assets/images/art_1.png'),
              ),
            ),
            new Container(
              color: Colors.blueGrey,
              child: new Center(
                child: new Text(
                  "Second",
                  style: textStyle(),
                ),
              ),
            ),
            new Container(
              color: Colors.teal,
              child: new Center(
                child: new Text(
                  "Third",
                  style: textStyle(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


