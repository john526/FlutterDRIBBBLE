import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';


class FadeAnimationTransitionUi extends StatefulWidget {
  final double delay;
  final Widget child;
  FadeAnimationTransitionUi({Key key,this.delay,this.child}):super();
  @override
  _FadeAnimationTransitionUiState createState() => _FadeAnimationTransitionUiState();
}

class _FadeAnimationTransitionUiState extends State<FadeAnimationTransitionUi> {
  final tween = MultiTrackTween([
    Track("opacity").add(
        Duration(milliseconds: 500),
        Tween(begin: 0.0, end: 1.0),
    ),
    Track("translateX").add(
        Duration(milliseconds: 500),
        Tween(begin: 120.0,end: 0),
        curve: Curves.easeOut
    ),
  ]);
  @override
  Widget build(BuildContext context) {
    return ControlledAnimation(
      delay: Duration(milliseconds: (500*widget.delay).round()),
      duration: tween.duration,
      tween: tween,
      child: widget.child,
      builderWithChild: (context,child,animation)=>Opacity(
          opacity: animation['opacity'],
          child: Transform.translate(
              offset: Offset(animation['translateX'],0),
            child: child,
          ),
      ),
    );
  }
}
