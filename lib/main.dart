import 'package:flutter/material.dart';

import 'pages/onboarding_page.dart';
import 'pages/home_screen.dart';
import 'pages/scroll.dart';
import 'pages/gallery.dart';
import 'pages/card_list.dart';
import 'pages/plant_detail.dart';
// import 'pages/dialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        '/gallery': (context) => Gallery(),
        '/cardlist': (context) => CardList(),
        '/plantdetail': (context) => PlantDetail(),
        // '/dialog': (context) => Dialog(),
      },
    );
  }
}
