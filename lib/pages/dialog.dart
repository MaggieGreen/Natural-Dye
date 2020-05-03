import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DialogAppBar extends StatefulWidget {
  @override
  _DialogAppBarState createState() => _DialogAppBarState();
}

class _DialogAppBarState extends State<DialogAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        child: AppBar(
          // leading: new Container(),
          backgroundColor: Colors.grey[200],
          title: Text('Test'),
          // status bar color
          brightness: Brightness.light,
          elevation: 0.0,
        ),
        preferredSize: Size.fromHeight(10.0),
      ),
      body: DefaultTabController(
        length: 2,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 24),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Color Source",
                    style: TextStyle(
                        fontFamily: 'CantataOne',
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                constraints: BoxConstraints.expand(height: 50),
                child: new TabBar(
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
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  child: TabBarView(children: [
                    //inspiration part
                    new StaggeredGridView.countBuilder(
                      padding: EdgeInsets.fromLTRB(24, 20, 24, 0),
                      crossAxisCount: 4,
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) =>
                          new Container(
                              // color: Colors.green,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                      color: Colors.grey, width: 2.0)),
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
                    //plant list part
                    Container(
                      child: Text("Articles Body"),
                    ),
                    // Container(
                    //   child: Text("User Body"),
                    // ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
