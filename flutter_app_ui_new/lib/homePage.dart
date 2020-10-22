import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui_new/animations/fadeAnimation.dart';
import 'package:flutter_app_ui_new/screens/presentationPage.dart';


class HomePageApp extends StatefulWidget {

  HomePageApp():super();
  @override
  _HomePageAppState createState() => _HomePageAppState();
}

class _HomePageAppState extends State<HomePageApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/multicopter.jpg"),
              fit: BoxFit.cover
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(.5),
                  Colors.black.withOpacity(.3)
                ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Drone",
                     style: TextStyle(fontSize: 60.0,color: Colors.white30,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20,),
                FadeAnimationTransitionUi(
                  delay: .5,
                  child: Text(
                      "votre application pour commander vos drones avec le meilleur equipements",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                SizedBox(height: 30,),
                FadeAnimationTransitionUi(
                  delay: .9,
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white.withOpacity(.5),
                          Colors.black.withOpacity(.3)
                        ]
                      ),
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: MaterialButton(
                        onPressed: (){
                          print("first material buttom");
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PresentationPageApp()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:18.0),
                              child: Text("Started",style: TextStyle(fontSize: 30),),
                            ),
                            Icon(Icons.arrow_forward_ios,color: Colors.white,),
                          ],
                        ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
