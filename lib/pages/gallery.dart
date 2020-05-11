import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
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
        body: Container(
          padding: EdgeInsets.fromLTRB(24.0, 0, 24.0, 30.0),
          child: Column(
            children: <Widget>[
              Container(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Gallery",
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
                  height: 670.0,
                  child: new ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return new Stack(
                        children: <Widget>[
                          //item
                          new Padding(
                            padding: const EdgeInsets.only(left: 50.0),
                            child: new Card(
                                margin: new EdgeInsets.all(20.0),
                                child: GestureDetector(
                                  onTap: () => {
                                    Navigator.pushNamed(context,
                                        '/timelinevideo/timeline_video_one')
                                  },
                                  child: new Container(
                                    width: double.infinity,
                                    height: 200.0,
                                    color: Colors.green,
                                  ),
                                )),
                          ),
                          //line
                          new Positioned(
                            top: 0.0,
                            bottom: 0.0,
                            left: 35.0,
                            child: new Container(
                              height: double.infinity,
                              width: 1.0,
                              color: Colors.blue,
                            ),
                          ),
                          //time
                          new Positioned(
                            top: 100.0,
                            left: 15.0,
                            child: new Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.amber,
                              ),
                              child: new Container(
                                margin: new EdgeInsets.all(5.0),
                                height: 30.0,
                                width: 30.0,
                                decoration: new BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.red),
                              ),
                            ),
                          )
                        ],
                      );
                    },
                    itemCount: 5,
                  )),
            ],
          ),
        ));
  }
}
