import 'package:flutter/material.dart';
import 'package:flutter_app_ui_house/screens/login.dart';
import 'package:flutter_app_ui_house/widgets/clipboardimage.dart';


class WelcomeAppUiPage extends StatefulWidget {
  @override
  _WelcomeAppUiPageState createState() => _WelcomeAppUiPageState();
}

class _WelcomeAppUiPageState extends State<WelcomeAppUiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/log-home-2225442_1920.jpg"),
            fit: BoxFit.cover
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentDirectional.bottomEnd,
              colors: [
                Colors.orange.withOpacity(.9),
                Colors.white.withOpacity(.3)
              ],
            ),
          ),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(

            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("House Fly", style: TextStyle(color: Colors.white,fontSize: 30),),
                  SizedBox(height: 40,),
                  Text(
                      "House Fly House Fly House Fly House Fly House Fly House Fly House Fly House Fly",
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(.7),
                            Colors.orangeAccent.withOpacity(.6)
                          ],
                      ),
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: MaterialButton(
                        onPressed: (){
                          print("Navigator log");
                          Navigator.push(context, MaterialPageRoute(builder:(contect)=>LoginAppUi()));
                        },
                      child: Text("House Fly",style: TextStyle(color: Colors.white,fontSize: 30,fontStyle: FontStyle.italic),),
                    ),
                  ),
                  SizedBox(height: 30,)
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
