import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Scroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    textStyle() {
      return new TextStyle(color: Colors.black, fontSize: 30.0);
    }

    return new DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            "Color Source",
            style: TextStyle(color: Color(0XFFFFFFFF)),
          ),
          backgroundColor: Color(0xFF777E65),
          elevation: 0,
          bottom: new TabBar(
            tabs: <Widget>[
              new Tab(
                text: "Inspiration",
              ),
              // new Tab(
              //   text: "Modern Art",
              // ),
              new Tab(
                text: "Dye plant library",
              ),
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new StaggeredGridView.countBuilder(
              padding: EdgeInsets.fromLTRB(24, 20, 24, 0),
              crossAxisCount: 4,
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) => new Container(
                // color: Colors.green,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                    color: Colors.grey,
                    width: 2.0
                    )
                ),
                child: new Center(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: new Text('$index'),
                  ),
                )),
              staggeredTileBuilder: (int index) =>
                new StaggeredTile.count(2, index.isEven ? 3 : 2),
              mainAxisSpacing: 6.0,
              crossAxisSpacing: 6.0,
            ),
            // new Container(
            //   color: Colors.blueGrey,
            //   child: new Center(
            //     child: new Text(
            //       "Second",
            //       style: textStyle(),
            //     ),
            //   ),
            // ),
            new ListView(
              children: <Widget>[
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}


