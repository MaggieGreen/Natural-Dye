import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        child: AppBar(
          // leading: new Container(),
          backgroundColor: Colors.white,
          // status bar color
          brightness: Brightness.light,
          elevation: 0.0,
        ),
        preferredSize: Size.fromHeight(30.0),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(24.0, 0, 24.0, 30.0),
        child: Column(
          children: <Widget>[
            Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Profile",
                  style: TextStyle(
                      fontFamily: 'CantataOne',
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
