import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:navigation_dot_bar/navigation_dot_bar.dart';

import 'card_list.dart';
import 'gallery.dart';
// import 'scroll.dart';
import 'profile.dart';
import 'source.dart';

class Navigation extends StatefulWidget {
  final primaryColor = const Color(0XFF323232);

  @override
  _Navigation createState() => _Navigation();
}

class _Navigation extends State<Navigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Profile(),
    Gallery(),
    DialogAppBar(),
    new Container(color: Colors.green),
    new Container(color: Colors.yellow),
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
          //home
          BottomNavigationBarItem(
              icon: Icon(
                IconData(0xe604, fontFamily: 'Navi'),
                size: 40.0,
                color: Color(0xFFD8E2C1),
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Color(0xFF96A97C)),
              ),
              activeIcon: Icon(
                IconData(0xe604, fontFamily: 'Navi'),
                size: 40.0,
                color: Color(0xFF96A97C),
              )),
          //gallery
          BottomNavigationBarItem(
              icon: Icon(
                IconData(0xe603, fontFamily: 'Navi'),
                size: 40.0,
                color: Color(0xFFD8E2C1),
              ),
              title: Text(
                "Gallery",
                style: TextStyle(color: Color(0xFF96A97C)),
              ),
              activeIcon: Icon(
                IconData(0xe603, fontFamily: 'Navi'),
                size: 40.0,
                color: Color(0xFF96A97C),
              )),
          //source
          BottomNavigationBarItem(
              icon: Icon(
                IconData(0xe606, fontFamily: 'Navi'),
                size: 40.0,
                color: Color(0xFFD8E2C1),
              ),
              title: Text(
                "Source",
                style: TextStyle(color: Color(0xFF96A97C)),
              ),
              activeIcon: Icon(
                IconData(0xe606, fontFamily: 'Navi'),
                size: 40.0,
                color: Color(0xFF96A97C),
              )),
          //tutorial
          BottomNavigationBarItem(
              icon: Icon(
                IconData(0xe606, fontFamily: 'Navi'),
                size: 40.0,
                color: Color(0xFFD8E2C1),
              ),
              title: Text(
                "Tutorial",
                style: TextStyle(color: Color(0xFF96A97C)),
              ),
              activeIcon: Icon(
                IconData(0xe606, fontFamily: 'Navi'),
                size: 40.0,
                color: Color(0xFF96A97C),
              )),
          //profile
          BottomNavigationBarItem(
              icon: Icon(
                IconData(0xe605, fontFamily: 'Navi'),
                size: 40.0,
                color: Color(0xFFD8E2C1),
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Color(0xFF96A97C)),
              ),
              activeIcon: Icon(
                IconData(0xe605, fontFamily: 'Navi'),
                size: 40.0,
                color: Color(0xFF96A97C),
              )),
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
