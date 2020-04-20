import 'package:flutter/material.dart';
import 'package:navigation_dot_bar/navigation_dot_bar.dart';

class Gallery extends StatefulWidget {
  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(left: 24.0),
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Time',
                style: TextStyle(
                    fontFamily: 'CantataOne',
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                height: 200,
                decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(
                  width: 3,
                  color: Colors.black,
                ))),
                child: Text("Content"),
              )
            ],
          );
        },
      ),
    ));
  }
}
