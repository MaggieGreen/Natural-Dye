import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'scroll.dart';
import 'card_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    CardList(),
    new Container(color: Colors.yellow),
    Scroll(),
    new Container(color: Colors.green),
    new Container(color: Colors.blue),
  ];
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        index: _currentIndex,
        key: _bottomNavigationKey,
        height: 70.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.crop_square, size: 30),
          Icon(Icons.color_lens, size: 30),
          Icon(Icons.book, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Color(0xFFF3CF77),
        buttonBackgroundColor: Color(0xFFF3CF77),
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
      ),
    );
  }
}
