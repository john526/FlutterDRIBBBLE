import 'package:flutter/material.dart';
import 'package:flutter_app_ui_new/animations/fadeAnimation.dart';


class DetailsAllDroneUiAppPage extends StatefulWidget {
  DetailsAllDroneUiAppPage():super();
  @override
  _DetailsAllDroneUiAppPageState createState() => _DetailsAllDroneUiAppPageState();
}

class _DetailsAllDroneUiAppPageState extends State<DetailsAllDroneUiAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          print("image tap detail all drone");
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/spraying.jpg"),
                fit: BoxFit.cover
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(.5),
                    Colors.black.withOpacity(.3)
                  ],
                ),
                color: Colors.black45
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeAnimationTransitionUi(
                        delay:.5,
                        child: Text(
                          "Alpha 254",
                          style: TextStyle(color: Colors.white,fontSize: 25),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FadeAnimationTransitionUi(delay: 1.0,child: Text("Autonomie : 15h",style: TextStyle(color: Colors.white,fontSize: 20),)),
                          FadeAnimationTransitionUi(
                            delay: 1.4,
                            child: Icon(
                              Icons.favorite,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0,),
                      FadeAnimationTransitionUi(
                        delay: 1.6,
                        child: Text(
                          "mini descirption all descirption mini descirption ",
                          style: TextStyle(color: Colors.white,fontSize: 25),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      FadeAnimationTransitionUi(
                        delay: 2.5,
                        child: Container(
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex:2,
                                child: ListView.builder(
                                  itemCount: 10,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (BuildContext,index){
                                    return GestureDetector(
                                      onTap: (){
                                        print("mini detail container down");
                                      },
                                      child: Container(
                                        width: 200,
                                        margin: EdgeInsets.only(right: 12),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            image: DecorationImage(
                                                image: AssetImage("images/multicopter.jpg")
                                            ),
                                            color: Colors.green
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                    ],
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
