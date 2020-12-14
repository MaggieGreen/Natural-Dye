import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onboarding_flutter/pages/tutorial/pick_info.dart';

class PickPlant extends StatefulWidget {
  @override
  _PickPlantState createState() => _PickPlantState();
}

class _PickPlantState extends State<PickPlant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3ECE3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
      body: Center(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Container(
                padding: EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0),
                child: Column(
                  children: [
                    Text(pickInfo[0].name,
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          color: Color(0XFF483C30),
                          fontSize: 30.0,
                          fontWeight: FontWeight.w700,
                        )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(pickInfo[0].description,
                        style: TextStyle(
                          height: 1.4,
                          fontFamily: 'OpenSans',
                          color: Color(0XFF483C30),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      height: 230.0,
                      child: Image.asset(
                        'assets/images/marigold_detail.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    // SvgPicture.asset('assets/icons/mic.svg',
                    //     semanticsLabel: 'Acme Logo'),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 64,
                            child: FlatButton(
                                onPressed: () => {
                                      Navigator.pushNamed(
                                          context, '/tutorial/puzzle')
                                    },
                                child: Text(
                                  "Confirm",
                                  style: TextStyle(color: Colors.white),
                                )),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF96A97C),
                                  // Color(0xFFD4C2A3),
                                  Color(0xFF96A97C),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
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
