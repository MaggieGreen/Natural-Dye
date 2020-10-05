import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flutter/material.dart';

class TutorialOpen extends StatefulWidget {
  @override
  _TutorialOpenState createState() => _TutorialOpenState();
}

class _TutorialOpenState extends State<TutorialOpen> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (BuildContext context, orientation) {
      MediaQueryData media = MediaQuery.of(context);
      double width = media.size.width;
      double height = media.size.height - 100;
      if (orientation == Orientation.portrait) {
        height /= 1.0;
      } else {
        width /= 1.0;
      }

      final List<Widget> children = [
        Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                width: width,
                height: height,
                child: WavingFlagDualPage(),
              ),
            )
          ],
        ),
        Stack(
          children: [
            Positioned(
                top: 60,
                left: 0,
                right: 0,
                child: Container(
                  width: width,
                  height: height,
                  alignment: Alignment.centerLeft,
                  child: FormPage(),
                ))
          ],
        ),
      ];

      return orientation == Orientation.portrait
          ? (Stack(children: children))
          : (Stack(children: children));
    });
  }
}

class DualAnimationLoopController with FlareController {
  final String _startAnimationName;
  final String _loopAnimationName;
  final double _mix;

  DualAnimationLoopController(this._startAnimationName, this._loopAnimationName,
      [this._mix = 1.0]);

  bool _looping = false;
  double _duration = 0.0;
  ActorAnimation _startAnimation;
  ActorAnimation _loopAnimation;

  @override
  void initialize(FlutterActorArtboard artboard) {
    _startAnimation = artboard.getAnimation(_startAnimationName);
    _loopAnimation = artboard.getAnimation(_loopAnimationName);
  }

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    _duration += elapsed;

    if (!_looping) {
      if (_duration < _startAnimation.duration) {
        _startAnimation.apply(_duration, artboard, _mix);
      } else {
        _looping = true;
        _duration -= _startAnimation.duration;
      }
    }
    if (_looping) {
      _duration %= _loopAnimation.duration;
      _loopAnimation.apply(_duration, artboard, _mix);
    }
    return true;
  }

  @override
  void setViewTransform(Mat2D viewTransform) {}
}

class WavingFlagDualPage extends StatefulWidget {
  @override
  State createState() => _WavingFlagDualPageState();
}

class _WavingFlagDualPageState extends State<WavingFlagDualPage> {
  final DualAnimationLoopController _loopController =
      DualAnimationLoopController('raise', 'wave');

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      padding: EdgeInsets.all(25.0),
      child: FlareActor(
        'assets/flare/waving_golf_flag_dual_animation.flr',
        // 'assets/flare/Select_Plant.flr',
        alignment: Alignment.bottomCenter,
        fit: BoxFit.contain,
        controller: _loopController,
        isPaused: !mounted,
      ),
    );
  }
}

class EndLoopController with FlareController {
  final String _animation;
  final double _loopAmount;
  final double _mix;

  double _duration = 0.0;
  ActorAnimation _actor;

  EndLoopController(this._animation, this._loopAmount, [this._mix = 0.5]);

  @override
  void initialize(FlutterActorArtboard artboard) {
    _actor = artboard.getAnimation(_animation);
  }

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    _duration += elapsed;

    if (_duration > _actor.duration) {
      final double loopStart = _actor.duration - _loopAmount;
      final double loopProgress = _duration - _actor.duration;
      _duration = loopStart + loopProgress;
    }
    _actor.apply(_duration, artboard, _mix);
    return true;
  }

  @override
  void setViewTransform(Mat2D viewTransform) {}
}

class FormPage extends StatefulWidget {
  @override
  State createState() => _FormState();
}

class _FormState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(0.0, 300.0, 0.0, 0.0),
                child: Image.asset('assets/images/openword.png')),
            SizedBox(
              height: 50.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 64,
                    child: FlatButton(
                        onPressed: () =>
                            {Navigator.pushNamed(context, '/tutorial/level')},
                        child: Text(
                          "Start",
                          style: TextStyle(color: Colors.white),
                        )),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF96A97C),
                          // Color(0xFFD4C2A3),
                          Color(0xFFB8E2C1)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 20.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Strategy",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                          color: Color(0xFF96A97C),
                          decoration: TextDecoration.underline)),
                  Spacer(),
                  Text("History",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                          color: Color(0xFF96A97C),
                          decoration: TextDecoration.underline)),
                ],
              ),
            ),
          ],
        ));
  }
}

//https://flutter.institute/flare-looping-the-end-of-an-animation
