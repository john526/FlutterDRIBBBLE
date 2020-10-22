import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';


class SimpleAnimationOpacityTween extends StatefulWidget {
  final double delay;
  final Widget child;

  SimpleAnimationOpacityTween({Key key, this.delay,this.child}):super();
  @override
  _SimpleAnimationOpacityTweenState createState() => _SimpleAnimationOpacityTweenState();
}

class _SimpleAnimationOpacityTweenState extends State<SimpleAnimationOpacityTween> {

  final tween = MultiTrackTween([
    Track("opacity").add(
      Duration(milliseconds: 500),
      Tween(begin: 0.0, end: 1.0)
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
              offset:Offset(animation['translateX'], 0) ,
            child: child,
          ),
      ),
    );
  }
}
