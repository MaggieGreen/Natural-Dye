import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class TileSimle extends StatelessWidget {
  TileSimle({
    Key key,
    this.title,
    this.image,
    this.describe,
  }) : super(key: key);

  final String title;
  final String image;
  final String describe;

  @override
  Widget build(BuildContext context) {
    // Card list
    return Container(
      // color: Color.fromARGB(255, 66, 165, 245),
      alignment: AlignmentDirectional(0.0, 0.0),
      padding: EdgeInsets.only(bottom: 20.0),
      child: Card(
          color: Color(0xFFEDEDED),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          // antiAlias 抗锯齿
          clipBehavior: Clip.antiAlias,
          // elevation: 5,
          // Shadow
          child: new Container(
            height: 120,
            alignment: Alignment.center,
            // ListTile
            child: new ListTile(
              // Plant image
              leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage(
                    this.image), // no matter how big it is, it won't overflow
              ),
              title: new Text(this.title),
              subtitle: new Text(this.describe),

              // Go to detail page
              trailing: new IconButton(
                icon: Icon(Icons.chevron_right),
                onPressed: () {
                  Navigator.pushNamed(context, '/colorpicker');
                },
                // Icons.chevron_right
              ),
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
          leading: new Container(),
          title: new Text(
            "Color Source",
            style: TextStyle(color: Color(0XFFFFFFFF)),
          ),
          backgroundColor: Color(0xFF777E65),
          elevation: 0,
          bottom: new TabBar(
            unselectedLabelColor: Colors.redAccent,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.redAccent, Colors.orangeAccent]),
                borderRadius: BorderRadius.circular(50),
                color: Colors.redAccent),
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
                      border: Border.all(color: Colors.grey, width: 2.0)),
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
              padding: EdgeInsets.fromLTRB(24, 20, 24, 20),
              children: <Widget>[
                TileSimle(
                  title: "1",
                  image: "assets/images/test.jpg",
                  describe: "Hello",
                ),
                TileSimle(
                  title: "2",
                  image: "assets/images/feature1.jpg",
                  describe:
                      "Hello2Hello2Hello2Hello2Hello2Hello2Hello2Hello2Hello2Hello2Hello2Hello2",
                ),
                TileSimle(
                  title: "3",
                  image: "assets/images/feature2.jpg",
                  describe: "Hello3",
                ),
                TileSimle(
                  title: "4",
                  image: "assets/images/feature3.jpg",
                  describe: "Hello4",
                ),
                TileSimle(
                  title: "5",
                  image: "assets/images/feature1.jpg",
                  describe: "Hello5",
                ),
                TileSimle(
                  title: "6",
                  image: "assets/images/feature2.jpg",
                  describe: "Hello6",
                ),
                TileSimle(
                  title: "7",
                  image: "assets/images/background.jpg",
                  describe: "Hello7",
                ),
                TileSimle(
                  title: "8",
                  image: "assets/images/feature1.jpg",
                  describe: "Hello8",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
