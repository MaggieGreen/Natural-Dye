import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Formula extends StatefulWidget {
  Formula({Key key}) : super(key: key);

  @override
  _FormulaState createState() => _FormulaState();
}

class _FormulaState extends State<Formula> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF3ECE3),
        appBar: AppBar(
          backgroundColor: Color(0xFFF3ECE3),
          title: ProgressBar2(),
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
        body: Stack(
          children: [
            Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  padding: EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
                  child: Column(
                    children: [
                      Text("Make Formula",
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Color(0XFF483C30),
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700,
                          )),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                          "Wash the pits and dry them. Harvest the most beautiful colors with the best formula.",
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Color(0XFF483C30),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                )),
            // Positioned.fill(
            //   top: -100,
            //   left: 24,
            //   right: 24,
            //   child: GestureDetector(
            //     onTap: () =>
            //         {Navigator.pushNamed(context, '/tutorial/boil_method')},
            //     child: Container(
            //       width: 300,
            //       child: Lottie.asset("assets/lottie/testonboarding.json",
            //           repeat: true, reverse: false),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                padding: EdgeInsets.fromLTRB(34.0, 240.0, 34.0, 0),
                child: GestureDetector(
                  onTap: () =>
                      {Navigator.pushNamed(context, '/tutorial/boil_method')},
                  child: Container(
                    height: 380.0,
                    width: 330.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/formula.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(0),
            //   child: Container(
            //     height: 600,
            //     padding: EdgeInsets.fromLTRB(24.0, 200.0, 24.0, 0),
            //     // child: ColorGame(),
            //   ),
            // ),
            // Positioned.fill(
            //     top: 550,
            //     left: 24,
            //     right: 24,
            //     child: Row(
            //       children: [
            //         Expanded(
            //           child: Container(
            //             height: 64,
            //             child: FlatButton(
            //                 onPressed: () =>
            //                     {Navigator.pushNamed(context, '..')},
            //                 child: Text(
            //                   "Next Step",
            //                   style: TextStyle(color: Colors.white),
            //                 )),
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(20),
            //               gradient: LinearGradient(
            //                 colors: [
            //                   Color(0xFF96A97C),
            //                   // Color(0xFFD4C2A3),
            //                   Color(0xFF96A97C),
            //                 ],
            //                 begin: Alignment.topLeft,
            //                 end: Alignment.bottomRight,
            //               ),
            //             ),
            //           ),
            //         )
            //       ],
            //     ))
          ],
        ));
  }
}

class ProgressBar2 extends StatelessWidget {
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
