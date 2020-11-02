import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/rendering.dart';
import 'package:onboarding_flutter/pages/tutorial/select_plants_controller.dart';

class SelectPlants extends StatefulWidget {
  final String title;

  SelectPlants({this.title, Key key}) : super(key: key);

  @override
  _SelectPlantsState createState() => _SelectPlantsState();
}

class _SelectPlantsState extends State<SelectPlants>
    with SingleTickerProviderStateMixin {
  // Inactivity [Timer]: if it fires, set the animation state back to "Demo Mode".
  Timer _currentDemoSchedule;
  SelectPlantsController _selectPlantsController;

  @override
  void initState() {
    _selectPlantsController = SelectPlantsController(demoUpdated: _update);
    super.initState();
  }

  // Trigger an update.
  _update() => setState(() {});

  _scheduleDemo(PointerUpEvent details) {
    if (!_selectPlantsController.isDemoMode) {
      if (_currentDemoSchedule != null) {
        _currentDemoSchedule.cancel();
      }
      _currentDemoSchedule = Timer(const Duration(seconds: 10), () {
        setState(() {
          /// Restart the demo at the end of this timer.
          _selectPlantsController.isDemoMode = true;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF3ECE3),
        appBar: AppBar(
          backgroundColor: Color(0xFFF3ECE3),
          title: Text("Select Plants",
              style: TextStyle(
                fontFamily: 'OpenSans',
                color: Color(0XFF483C30),
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              )),
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
        body: Container(
          child: Listener(
            onPointerUp: _scheduleDemo,
            child: Stack(
              fit: StackFit.expand,
              children: [
                FlareActor(
                  "assets/flare/Select_Plant.flr",
                  controller: _selectPlantsController,
                  // fit: BoxFit.fill,
                  alignment: Alignment.topCenter,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 440, left: 40, right: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Text(
                      //     _selectPlantsController.plants.toString() + " PLANTS",
                      //     style: TextStyle(
                      //         color: Colors.black,
                      //         fontFamily: "Roboto",
                      //         fontSize: 14,
                      //         fontWeight: FontWeight.w700)),
                      Slider(
                          min: 0,
                          max: 3,
                          divisions: 3,
                          value: _selectPlantsController.plants.toDouble() - 3,
                          onChanged: (double value) {
                            /// [setState()] triggers a visual refresh with the updated parameters.
                            setState(() {
                              /// Stop the demo.
                              _selectPlantsController.isDemoMode = false;

                              /// When the value of the slider changes, the rooms setter
                              /// is invoked, which enqueues the new animation.
                              _selectPlantsController.plants =
                                  value.toInt() + 3;

                              /// Stop a scheduled timer, if any.
                              if (_currentDemoSchedule != null) {
                                _currentDemoSchedule.cancel();
                                _currentDemoSchedule = null;
                              }
                            });
                          }),
                      Text(
                        "Drag to change plants",
                        style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                          color: Color(0xFF96A97C),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
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
                )
              ],
            ),
          ),
        ));
  }
}
