import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:navigation_dot_bar/navigation_dot_bar.dart';

import 'card_list.dart';
import 'gallery.dart';
import 'scroll.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    CardList(),
    Gallery(),
    Scroll(),
    new Container(color: Colors.green),
    new Container(color: Colors.blue),
  ];
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        onTap: (index) => setState(() => _currentIndex = index),
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              title: Text("Blue")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.color_lens,
                color: Colors.blue,
              ),
              title: Text(
                "Orange",
                style: TextStyle(color: Colors.brown),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
                color: Colors.blue,
              ),
              title: Text("Red")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.crop_square,
                color: Colors.blue,
              ),
              title: Text("Blue")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.crop_square,
                color: Colors.blue,
              ),
              title: Text("Blue")),
        ],
        // onTap: (index) {
        //   setState(() {
        //     _currentIndex = index;
        //   });
        // },
        //index: _currentIndex,
        key: _bottomNavigationKey,
        //height: 70.0,

        // items: <BottomNavigationDotBarItem>[
        //   // Icon(IconData(0xe633, fontFamily: 'MyIcons'), size: 30),
        //   // Icon(Icons.crop_square, size: 30),
        //   // Icon(Icons.color_lens, size: 30),
        //   // Icon(Icons.book, size: 30),
        //   // Icon(Icons.perm_identity, size: 30),
        //   BottomNavigationDotBarItem(
        //       icon: Icons.map,
        //       onTap: (index) => setState(() => _currentIndex = index),),
        //   BottomNavigationDotBarItem(
        //       icon: Icons.alarm_add,
        //       onTap: () => {Navigator.pushNamed(context, '/gallery')}),
        //   BottomNavigationDotBarItem(
        //       icon: Icons.timer,
        //       onTap: () => {Navigator.pushNamed(context, '/scrolllist')}),
        //   BottomNavigationDotBarItem(
        //       icon: Icons.timer,
        //       onTap: () => {Navigator.pushNamed(context, '/cardlist')}),
        //   BottomNavigationDotBarItem(
        //       icon: Icons.timer,
        //       onTap: () => {Navigator.pushNamed(context, '/cardlist')}),
        // ],
        // color: Color(0xFFF3CF77),
        // activeColor: Color(0xFFFFFFF),
        // buttonBackgroundColor: Color(0xFFF3CF77),
        // backgroundColor: Colors.transparent,
        // animationCurve: Curves.easeInOut,
        // animationDuration: Duration(milliseconds: 600),
      ),
    );
  }
}
