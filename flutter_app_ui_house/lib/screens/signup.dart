import 'package:flutter/material.dart';
import 'package:flutter_app_ui_house/screens/login.dart';
import 'package:flutter_app_ui_house/widgets/clipboardimage.dart';
import 'package:flutter_app_ui_house/widgets/usernamesignup.dart';

class SignUpAppUi extends StatefulWidget {
  @override
  _SignUpAppUiState createState() => _SignUpAppUiState();
}

class _SignUpAppUiState extends State<SignUpAppUi> {
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
                          child: Image.asset("images/living-room-2155353_1920.jpg", fit: BoxFit.cover,),
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
                                  Colors.blue,
                                  Colors.black.withOpacity(0.1),
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
                          child: Text("House Fly",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color:Colors.orangeAccent),),
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
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginAppUi()));
                    },
                    child: Text("SIGNUP",style: TextStyle(fontSize: 40, color:Colors.redAccent,fontWeight: FontWeight.w900),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16,),
            UsernameSignUpUiApp(),
          ],
        ),
      ),
    );
  }
}
