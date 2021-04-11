import 'package:flutter/material.dart';
import 'package:onboarding_flutter/pages/new_plant_detail.dart';
import 'package:onboarding_flutter/pages/tutorial/filter.dart';
import 'package:onboarding_flutter/pages/tutorial/knocking.dart';
import 'package:onboarding_flutter/pages/tutorial/level.dart';
import 'package:onboarding_flutter/pages/tutorial/pick_plant.dart';
import 'package:onboarding_flutter/pages/tutorial/select_plants.dart';
import 'package:onboarding_flutter/pages/tutorial/tutorial_open.dart';
import 'package:onboarding_flutter/pages/tutorial/unlocked_puzzle.dart';

import 'pages/onboarding_page.dart';
import 'pages/navigation.dart';
import 'pages/scroll.dart';
import 'pages/gallery.dart';
import 'pages/card_list.dart';
import 'pages/plant_detail.dart';
import 'pages/new_plant_detail.dart';
import 'pages/emulator_intro.dart';
import 'pages/color_picker.dart';
import 'pages/source.dart';
import 'pages/material_list.dart';
import 'pages/profile.dart';
import 'pages/timelinevideo/timeline_video_one.dart';
import 'pages/tutorial/open.dart';
import 'pages/tutorial/tutorial_open.dart';
import 'pages/tutorial/level.dart';
import 'pages/tutorial/choose_avocado.dart';
import 'pages/tutorial/select_plants.dart';
import 'pages/tutorial/pick_plant.dart';
import 'pages/tutorial/puzzle.dart';
import 'pages/tutorial/useful_part.dart';
import 'pages/tutorial/formula.dart';
import 'pages/tutorial/boil_method.dart';
import 'pages/tutorial/knocking.dart';
import 'pages/tutorial/filter.dart';
import 'pages/tutorial/unlocked_puzzle.dart';
import 'pages/tutorial/processing.dart';
import 'pages/tutorial/prepare.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Onboarding',
      // home: new Scaffold(
      //   backgroundColor: Color(0xFFFBF8F6),
      // ),
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
        '/new_plant_detail': (context) => NewPlantDetail(),
        '/emulator_intro': (context) => EmulatorIntro(),
        '/colorpicker': (context) => ColorPicker(),
        '/dialog': (context) => DialogAppBar(),
        '/materiallist': (context) => MaterialList(),
        '/profile': (context) => Profile(),
        '/timelinevideo/timeline_video_one': (context) => TimelineVideoOne(),
        '/tutorial/open': (context) => TutorialOpen(),
        '/tutorial/tutorial_open': (context) => NewOpen(),
        '/tutorial/useful_part': (context) => UsefulPart(),
        '/tutorial/processing': (context) => Processing(),
        '/tutorial/prepare': (context) => Prepare(),
        '/tutorial/level': (context) => Level(),
        '/tutorial/choose_avocado': (context) => ChooseAvocado(),
        '/tutorial/select_plants': (context) => SelectPlants(),
        '/tutorial/pick_plant': (context) => PickPlant(),
        '/tutorial/puzzle': (context) => Puzzle(),
        '/tutorial/formula': (context) => Formula(),
        '/tutorial/boil_method': (context) => BoilMethod(),
        '/tutorial/knocking': (context) => Knocking(),
        '/tutorial/filter': (context) => FilterOut(),
        '/tutorial/unlocked_puzzle': (context) => UnlockLevelB(),
      },
    );
  }
}
