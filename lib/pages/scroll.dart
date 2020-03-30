import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TileSimle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Card list
    return Container(
      // color: Color.fromARGB(255, 66, 165, 245),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          // antiAlias 抗锯齿
          clipBehavior: Clip.antiAlias,
          elevation: 5,
          // Shadow
          child: new Container(
            height: 120,
            alignment: Alignment.center,

            // ListTile
            child: new ListTile(
              title: new Text("Plant Name"),
              subtitle: new Text("Plant describe"),

              // Plant image
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/background.jpg"), // no matter how big it is, it won't overflow
              ),

              // Go to detail page
              trailing: new Icon(Icons.chevron_right),
            ),
          )),
    );
  }
}

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

            new ListView(
                  //vertical
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.fromLTRB(24, 20, 24, 0),
                  children: <Widget>[
                    TileSimle(),
                    TileSimle(),
                    TileSimle(),
                    TileSimle(),
                    TileSimle(),
                    TileSimle(),
                    TileSimle(),
                    TileSimle(),
                  ],
                ) 

          ],
        ),
      ),
    );
  }
}


