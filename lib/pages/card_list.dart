import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  textStyle() {
    return new TextStyle(
        fontFamily: 'Open Sans', color: Colors.black, fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            // title: new Padding(
            //     child: new Text("Explore",
            //         style: TextStyle(
            //           fontFamily: 'CantataOne',
            //           color: Colors.black,
            //           fontSize: 30.0,
            //         )),
            //     padding: const EdgeInsets.only(right: 200.0)),
            leading: new Container(),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(50),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: TabBar(
                      // unselectedLabelColor: Colors.blue,
                      indicatorColor: Colors.amber,
                      indicatorSize: TabBarIndicatorSize.label,
                      // indicator: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(50),
                      //     color: Colors.blue),
                      tabs: [
                        Tab(
                          child: Container(
                            // decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(50),
                            //     border: Border.all(color: Colors.blue, width: 1)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("Seasonal", style: textStyle()),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            // decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(50),
                            //     border: Border.all(color: Colors.blue, width: 1)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("Community", style: textStyle()),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ),
          body: ListView(
            children: <Widget>[
              new Container(
                height: 200.0,
                child: TabBarView(children: [
                  Center(
                    child: Container(
                      color: Colors.amber,
                      child: Text('Home1'),
                    ),
                  ),
                  Center(
                    child: Container(
                      color: Colors.red,
                      child: Text('Home2'),
                    ),
                  ),
                ]),
              )
            ],
          )
          // TabBarView(children: [
          //   Center(
          //     child: Container(
          //       color: Colors.amber,
          //       child: Text('Home1'),
          //     ),
          //   ),
          //   Center(
          //     child: Container(
          //       color: Colors.red,
          //       child: Text('Home2'),
          //     ),
          //   ),
          // ]),
          ),
    );
  }
}
