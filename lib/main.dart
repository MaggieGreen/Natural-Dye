import 'package:flutter/material.dart';

import 'pages/onboarding_page.dart';
import 'pages/navigation.dart';
import 'pages/scroll.dart';
import 'pages/gallery.dart';
import 'pages/card_list.dart';
import 'pages/plant_detail.dart';
import 'pages/color_picker.dart';
import 'pages/source.dart';
import 'pages/material_list.dart';
import 'pages/profile.dart';
import 'pages/timelinevideo/timeline_video_one.dart';
import 'pages/tutorial/open.dart';

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
        '/location': (context) => Navigation(),
        '/scrolllist': (context) => Scroll(),
        '/gallery': (context) => Gallery(),
        '/cardlist': (context) => CardList(),
        '/plantdetail': (context) => MainCollapsingToolbar(),
        '/colorpicker': (context) => ColorPicker(),
        '/dialog': (context) => DialogAppBar(),
        '/materiallist': (context) => MaterialList(),
        '/profile': (context) => Profile(),
        '/timelinevideo/timeline_video_one': (context) => TimelineVideoOne(),
        '/tutorial/open': (context) => TutorialOpen(),
      },
    );
  }
}
