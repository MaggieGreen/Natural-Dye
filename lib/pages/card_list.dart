import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        child: AppBar(
          leading: new Container(),
          backgroundColor: Colors.white,
          // status bar color
          brightness: Brightness.light,
          elevation: 0.0,
        ),
        preferredSize: Size.fromHeight(10.0),
      ),
      body: DefaultTabController(
          length: 2,
          child: Container(
            padding: EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
            child: Column(
              children: <Widget>[
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Explore",
                      style: TextStyle(
                          fontFamily: 'CantataOne',
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF323232)),
                    ),
                  ),
                ),
                SizedBox(height: 6),
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "The beauty of natural dye",
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF323232)),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 100, 0),
                  child: Column(
                    // column position
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Chip(
                      //   // avatar: CircleAvatar(
                      //   //   backgroundColor: Colors.grey,
                      //   // ),
                      //   backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
                      //   label: Text('Seasonal Pick'),
                      // ),
                      Text(
                        'Spring’s Marigold',
                        style: TextStyle(
                            fontFamily: 'CantataOne',
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      // SizedBox(height: 10),
                      // Text(
                      //   'Bright and pleasant yellow dye',
                      //   style: TextStyle(
                      //       fontFamily: 'OpenSans',
                      //       fontSize: 16,
                      //       fontWeight: FontWeight.w400,
                      //       color: Colors.black),
                      // ),
                      SizedBox(height: 10),
                      //old link to detail page buttom style
                      FlatButton(
                        onPressed: () =>
                            {Navigator.pushNamed(context, '/plantdetail')},
                        child: Text(
                          'Get the details',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        color: Colors.transparent,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white, width: 2.0)),
                        // splashColor: Colors.redAccent,
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0),
                          bottomLeft: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0)),
                      image: DecorationImage(
                          image: AssetImage('assets/images/background2.png'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(height: 20),
                //Tab bar
                Container(
                  // padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                  // margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
                  constraints: BoxConstraints.expand(height: 50),
                  decoration: BoxDecoration(
                      color: Color(0xFFF2F2F2),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0),
                          bottomLeft: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0))),
                  child: new TabBar(
                    unselectedLabelColor: Color(0xFF323232),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xFFA3CBCD), Color(0xFFB2C251)]),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.redAccent),
                    tabs: <Widget>[
                      new Tab(
                        text: "Community",
                      ),
                      // new Tab(
                      //   text: "Modern Art",
                      // ),
                      new Tab(
                        text: "Follow",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Container(
                    child: TabBarView(children: [
                      //Community part
                      new StaggeredGridView.countBuilder(
                        // padding: EdgeInsets.fromLTRB(24, 0, 24, 30),
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
                      //Follow part
                      new StaggeredGridView.countBuilder(
                        // padding: EdgeInsets.fromLTRB(24, 0, 24, 30),
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
                                    child: Image(
                                  image: AssetImage(
                                      'assets/images/Inspiration${index + 1}.jpg'),
                                ))),
                        staggeredTileBuilder: (int index) =>
                            new StaggeredTile.count(2, index.isEven ? 3 : 2),
                        mainAxisSpacing: 6.0,
                        crossAxisSpacing: 6.0,
                      ),
                    ]),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
