import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {

  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var children2 = <Widget>[
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                  image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover)),
                  ),
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: <Widget>[
                //     Text(
                //       "Daily for you",
                //       textScaleFactor: 1,
                //       style: TextStyle(
                //         fontSize: 24, height: 1.5, fontFamily: 'OpenSans'
                //       ),
                //     ),
                //     SizedBox(
                //         height: 15,
                //       ),
                //     Text(
                //       "View More",
                //       textScaleFactor: 1,
                //       style: TextStyle(
                //         fontSize: 16, height: 1.5, fontFamily: 'OpenSans'
                //       ),
                //     ),
                //   ],
                // ),
                // SizedBox(height: 40),
                Text(
                      'Explore Natural Dye',
                      style: TextStyle(
                          fontSize: 24, height: 1.5, fontFamily: 'OpenSans'),
                    ),
                SizedBox(height: 20),
                
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: <Widget>[
                //     Container(
                //       padding: EdgeInsets.all(60),
                //       color: Colors.amber,
                //       child: Text('1'),
                //     ),
                //     Container(
                //       padding: EdgeInsets.all(60),
                //       color: Colors.blue,
                //       child: Text('2'),
                //     ),
                //     Container(
                //       padding: EdgeInsets.all(60),
                //       color: Colors.red,
                //       child: Text('3'),
                //     ),
                //   ],
                // ),
                RaisedButton(
                onPressed: () => {Navigator.pushNamed(context, '/scrolllist')},
                child: Text('Color Source'),
                color: Colors.blueGrey,
               ),
               RaisedButton(
                onPressed: () => {Navigator.pushNamed(context, '/cardlist')},
                child: Text('Card list'),
                color: Colors.blueGrey,
               ),
              ];
    return Scaffold(
      // backgroundColor: Colors.transparent,
      // appBar: new AppBar(
      //   backgroundColor: Colors.transparent,
      //   title: new Text('Home'),
      //   centerTitle: true,
      //   elevation: 0,
      // ),

      bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 70.0,
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.crop_square, size: 30),
            Icon(Icons.color_lens, size: 30),
            Icon(Icons.book, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.amber,
          buttonBackgroundColor: Colors.green,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
          body: Container(
          color: Colors.white,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              children: children2,
            ),
          ),
        ));

  }
}

     