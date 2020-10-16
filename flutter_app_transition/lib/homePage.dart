import 'package:flutter/material.dart';
import 'package:flutter_app_transition/animation/fadeAnimationPage.dart';
import 'package:flutter_app_transition/screens/presentationPage.dart';
import 'package:page_transition/page_transition.dart';


class HomePageApp extends StatefulWidget {
  @override
  _HomePageAppState createState() => _HomePageAppState();
}

class _HomePageAppState extends State<HomePageApp> with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  bool _textVisibility = true;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration:Duration(milliseconds: 100),
    );

    _animation = Tween<double>(
        begin: 1.0,
        end:25.0
    ).animate(_animationController);
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void _onTap(){
    setState(() {
      _textVisibility = false;
    });

    _animationController.forward().then((value){
      Navigator.push(context, PageTransition(
        type:PageTransitionType.fade,
        child: PresentationPageApp(),
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/hamburger.jpg"),
              fit: BoxFit.cover
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.2),
                  Colors.black.withOpacity(.8),
                ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeAnimationPageApp(
                  delay: .5,
                  child: Text(
                      "Take your order",
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 50),
                  ),
                ),
                SizedBox(height: 20,),
                FadeAnimationPageApp(
                  delay: 1.0,
                  child: Text(
                      "See restaurants nearby by \nadding location",
                      style: TextStyle(color: Colors.white,height: 1.4,fontSize: 18),
                  ),
                ),
                SizedBox(height: 100,),
                FadeAnimationPageApp(
                  delay: 1.5,
                  child: ScaleTransition(
                      scale: _animation,
                      child: Container(
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Colors.yellow,
                              Colors.orange
                            ],
                          ),
                        ),
                        child: AnimatedOpacity(
                            opacity:_textVisibility ? 1.0 : 0.0,
                            duration: Duration(milliseconds: 50),
                            child: MaterialButton(
                              onPressed: ()=>_onTap(),
                              minWidth: double.infinity,
                              child: Text("Start", style: TextStyle(color: Colors.white),),
                            ),
                        ),
                      ),
                  ),
                ),
                SizedBox(height: 20,),
                FadeAnimationPageApp(
                  delay: 2.0,
                  child: AnimatedOpacity(
                    opacity: _textVisibility ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 50),
                    child: Align(
                      child: Text("Now Deliver To Your Door 24h/7j",style: TextStyle(color: Colors.white,fontSize: 15),),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
