import 'package:flutter/material.dart';
import 'package:flutter_app_ui_house/homePage.dart';
import 'package:flutter_app_ui_house/screens/signup.dart';
import 'package:flutter_app_ui_house/widgets/clipboardimage.dart';
import 'package:flutter_app_ui_house/widgets/username.dart';


class LoginAppUi extends StatefulWidget {
  @override
  _LoginAppUiState createState() => _LoginAppUiState();
}

class _LoginAppUiState extends State<LoginAppUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: OnBoardingImageClipper(),
                  child: Container(
                    width: double.infinity,
                    height: 450,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: -60,
                          right:-30,
                          bottom: 0,
                          left: 0,
                          child: Image.asset("images/log-home-2225442_1920.jpg", fit: BoxFit.cover,),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: double.infinity,
                            height: 340,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.red.withOpacity(0.3),
                                  Colors.orange.withOpacity(0.4),
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 40,
                          top: 50,
                          child: Text("House Fly",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color:Colors.blue),),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 30,
                  bottom: 0,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpAppUi()));
                      print("Sign Up");
                    },
                    child: Text("SIGN UP",style: TextStyle(fontSize: 40, color: Colors.orange,fontWeight: FontWeight.w900),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16,),
            UsernameUiPage(),
            SizedBox(height: 16,),
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePageUiApp()));
                print("Log IN");
              },
              child: Text("LOG IN",style: TextStyle(fontSize: 40, color: Colors.orange,fontWeight: FontWeight.w900),),
            ),
          ],
        ),
      ),
    );
  }
}
