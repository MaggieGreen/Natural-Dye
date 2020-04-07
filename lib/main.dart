import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'pages/onboarding_page.dart';
import 'pages/home_screen.dart';
import 'pages/scroll.dart';
import 'pages/gallery.dart';
import 'pages/card_list.dart';
import 'pages/plant_detail.dart';

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
      },
    );
  }
}

// class bottomNavigationBar extends StatefulWidget {
//   @override
//   _bottomNavigationBarState createState() => _bottomNavigationBarState();
// }

// class _bottomNavigationBarState extends State<bottomNavigationBar> {

//   int _page = 0;
//   final List<Widget> _children = [];
//   // void onTappedBar(int index){
//   //   setState(() {
//   //     _currentIndex = index;
//   //   });
//   // }

//   GlobalKey _bottomNavigationKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       // body: _children[_currentIndex],
//       bottomNavigationBar: CurvedNavigationBar(
//           // onTap: onTappedBar,
//           // currentIndex: _currentIndex,

//           key: _bottomNavigationKey,
//           index: 0,
//           height: 70.0,
//           items: <Widget>[
//             Icon(Icons.home, size: 30),
//             Icon(Icons.crop_square, size: 30),
//             Icon(Icons.color_lens, size: 30),
//             Icon(Icons.book, size: 30),
//             Icon(Icons.perm_identity, size: 30),
//           ],
//           color: Colors.amber,
//           buttonBackgroundColor: Colors.green,
//           backgroundColor: Colors.white,
//           animationCurve: Curves.easeInOut,
//           animationDuration: Duration(milliseconds: 600),
//           onTap: (index) {
//             setState(() {
//               _page = index;
//             });
//           },
//         ),
//     );
//   }
// }
