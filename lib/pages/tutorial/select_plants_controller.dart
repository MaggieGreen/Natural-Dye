import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flutter/animation.dart';

typedef void OnUpdated();
//It defines a pointer-to-function type.

class SelectPlantsController extends FlareController {
  static const double DemoMixSpeed = 10;
  static const double FPS = 60;

  final OnUpdated demoUpdated;

  SelectPlantsController({this.demoUpdated});

  bool isDemoMode = true;
  int _plants = 6;
  double _lastDemoValue = 0.0;
  FlutterActorArtboard _artboard;
  FlareAnimationLayer _demoAnimation;
  FlareAnimationLayer _skyAnimation;

  final List<FlareAnimationLayer> _plantAnimations = [];

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    /// Advance the background animation every frame.
    _skyAnimation.time =
        (_skyAnimation.time + elapsed) % _skyAnimation.duration;
    _skyAnimation.apply(artboard);

    /// Iterate from the top b/c elements might be removed.
    int len = _plantAnimations.length - 1;
    for (int i = len; i >= 0; i--) {
      FlareAnimationLayer layer = _plantAnimations[i];
      layer.time += elapsed;

      /// The mix quickly ramps up to 1, but interpolates for the first few frames.
      layer.mix = min(1.0, layer.time / 0.07);
      layer.apply(artboard);

      /// When done, remove it.
      if (layer.isDone) {
        _plantAnimations.removeAt(i);
      }
    }

    /// If the app is still in demo mode, the mix is positive
    /// Otherwise quickly ramp it down to stop the animation.
    double demoMix =
        _demoAnimation.mix + DemoMixSpeed * (isDemoMode ? elapsed : -elapsed);
    demoMix = demoMix.clamp(0.0, 1.0);
    _demoAnimation.mix = demoMix;

    if (demoMix != 0.0) {
      /// Advance the time, and loop.
      _demoAnimation.time =
          (_demoAnimation.time + elapsed) % _demoAnimation.duration;
      _demoAnimation.apply(artboard);

      /// Check which number of plants is currently visible.
      _checkplant();
    }

    return true;
  }

  /// Grab the references to the right animations, and
  /// packs them into [FlareAnimationLayer] objects
  @override
  void initialize(FlutterActorArtboard artboard) {
    _artboard = artboard;
    _demoAnimation = FlareAnimationLayer()
      ..animation = _artboard.getAnimation("Demo Mode");
    _skyAnimation = FlareAnimationLayer()
      ..animation = _artboard.getAnimation("Sun Rotate")
      ..mix = 1.0;
    ActorAnimation endAnimation = artboard.getAnimation("to 6");
    if (endAnimation != null) {
      endAnimation.apply(endAnimation.duration, artboard, 1.0);
    }
  }

  @override
  void setViewTransform(Mat2D viewTransform) {}

  /// Use the [demoUpdated] callback to relay the current number of rooms
  /// to the [Page] widget, so it can position the slider accordingly.
  _checkplant() {
    double demoFrame = _demoAnimation.time * FPS;
    double demoValue = 0.0;
    if (demoFrame <= 15) {
      demoValue =
          lerpDouble(6.0, 5.0, Curves.easeInOut.transform(demoFrame / 15));
    } else if (demoFrame <= 36) {
      demoValue = 5.0;
    } else if (demoFrame <= 50) {
      demoValue = lerpDouble(
          5.0, 4.0, Curves.easeInOut.transform((demoFrame - 36) / (50 - 36)));
    } else if (demoFrame <= 72) {
      demoValue = 4.0;
    } else if (demoFrame <= 87) {
      demoValue = lerpDouble(
          4.0, 3.0, Curves.easeInOut.transform((demoFrame - 72) / (87 - 72)));
    } else if (demoFrame <= 128) {
      demoValue = 3.0;
    } else if (demoFrame <= 142) {
      demoValue = lerpDouble(3.0, 6.0,
          Curves.easeInOut.transform((demoFrame - 128) / (142 - 128)));
    } else if (demoFrame <= 164) {
      demoValue = 6.0;
    }

    if (_lastDemoValue != demoValue) {
      _lastDemoValue = demoValue;
      this._plants = demoValue.toInt();

      /// Use the callback to let the [Page] widget know that the current value
      /// has been changed so that the Slider can be updated.
      if (demoUpdated != null) {
        demoUpdated();
      }
    }
  }

  _enqueueAnimation(String name) {
    ActorAnimation animation = _artboard.getAnimation(name);
    if (animation != null) {
      _plantAnimations.add(FlareAnimationLayer()..animation = animation);
    }
  }

  set plants(int value) {
    if (_plants == value) {
      return;
    }

    /// Sanity check.
    if (_artboard != null) {
      /// Add the animation with plant [value] to the list.
      _enqueueAnimation("to $value");

      /// Add the correct highlight.
      if ((_plants > 4 && value < 5) || (_plants < 5 && value > 4)) {
        _enqueueAnimation("Center Window Highlight");
      }
      if (_plants == 3 || value == 3) {
        _enqueueAnimation("Outer Windows Highlight");
      }
      if (value == 6 || _plants == 6) {
        _enqueueAnimation("Inner Windows Highlight");
      }
    }
    _plants = value;
  }

  int get plants => _plants;
}
