import 'package:flutter/material.dart';

class BoilMethod extends StatefulWidget {
  @override
  _BoilMethodState createState() => _BoilMethodState();
}

class _BoilMethodState extends State<BoilMethod> {
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
                    Text("Boil Method",
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
                        "Put all martials in a pot filled with enough water, boil them.",
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Color(0XFF483C30),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
              )),
        ],
      ),
    );
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