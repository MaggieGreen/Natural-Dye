import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Puzzle extends StatefulWidget {
  @override
  _PuzzleState createState() => _PuzzleState();
}

class _PuzzleState extends State<Puzzle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3ECE3),
      appBar: AppBar(
        backgroundColor: Color(0xFFF3ECE3),
        title: ProgressBar(),
        iconTheme: IconThemeData(color: Color(0xFF483C30)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.view_list),
            onPressed: () {
              print('TutorialMenu');
            },
          )
        ],
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            Text("Intro",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.6,
                    fontSize: 32.0,
                    color: Color(0xFF483C30))),
            Padding(
              padding: EdgeInsets.fromLTRB(34.0, 20.0, 34.0, 0.0),
              child: Text(
                  "Avocado is a prevalent ingredient. You can buy it at any local market or store.\n\nComplete all the processes and explore how to extract the pink pigment from the green fruit.",
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Color(0XFF483C30),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            SizedBox(
              height: 50.0,
            ),
            GestureDetector(
              onTap: () =>
                  {Navigator.pushNamed(context, '/tutorial/useful_part')},
              child: Container(
                width: 300,
                child: Lottie.asset("assets/lottie/testonboarding.json",
                    repeat: true, reverse: false),
              ),
            ),
            SizedBox(
              height: 110.0,
            ),
            // Padding(
            //   padding: EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 0.0),
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: Container(
            //           height: 50,
            //           child: FlatButton(
            //               onPressed: () => {
            //                     Navigator.pushNamed(
            //                         context, '/tutorial/useful_part')
            //                   },
            //               child: Text(
            //                 "Confirm",
            //                 style: TextStyle(
            //                     fontSize: 16,
            //                     fontWeight: FontWeight.w700,
            //                     letterSpacing: 0.6,
            //                     fontFamily: 'OpenSans',
            //                     color: Colors.white),
            //               )),
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(8),
            //             gradient: LinearGradient(
            //               colors: [
            //                 Color(0xFF866A50),
            //                 // Color(0xFFD4C2A3),
            //                 Color(0xFF866A50),
            //               ],
            //               begin: Alignment.topLeft,
            //               end: Alignment.bottomRight,
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class ProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // centers horizontally
      crossAxisAlignment: CrossAxisAlignment.center, // centers vertically
      children: [
        Text("Progress",
            style: TextStyle(
              fontFamily: 'OpenSans',
              color: Color(0XFF483C30),
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            )),
        SizedBox(
          width: 3,
        ), // The size box provides an immediate spacing between the widgets
        Image.asset(
          "assets/images/logo.png",
          width: 40,
        )
      ],
    );
  }
}
