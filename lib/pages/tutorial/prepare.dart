import 'package:flutter/material.dart';

class Prepare extends StatefulWidget {
  @override
  _PrepareState createState() => _PrepareState();
}

class _PrepareState extends State<Prepare> {
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
      body: DefaultTabController(
        length: 2,
        child: Container(
          child: Column(
            children: [
              Container(
                // padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
                constraints: BoxConstraints.expand(height: 50),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                        bottomLeft: Radius.circular(25.0),
                        bottomRight: Radius.circular(25.0))),
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
                      text: "Necessary",
                    ),
                    // new Tab(
                    //   text: "Modern Art",
                    // ),
                    new Tab(
                      text: "Optional",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  child: TabBarView(
                    children: [
                      //Necessary part
                      new Container(
                        width: 20,
                        height: 30,
                        color: Colors.amber,
                      ),
                      //Optional part
                      new Container(
                        width: 20,
                        height: 30,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              new Container(
                width: 20,
                height: 100,
                color: Colors.red,
              ),
            ],
          ),
        ),
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
          "assets/images/process3.png",
          width: 240,
        )
      ],
    );
  }
}
