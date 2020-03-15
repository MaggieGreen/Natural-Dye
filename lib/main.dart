import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'pages/onboarding_page.dart';
import 'pages/home_screen.dart';
import 'pages/scroll.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Onboarding',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/': (context) => OnboardingPage(),
        '/home': (context) => OnboardingPage(),
        '/location': (context) => HomeScreen(),
        '/scrolllist': (context) => Scroll(),
      },
    );
  }
}

class bottomNavigationBar extends StatefulWidget {
  @override
  _bottomNavigationBarState createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //bottomNavigationBar: CurvedNavigationBar(
      //key: _bottomNavigationKey,
      //),
    );
  }
}