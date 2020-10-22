import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_ui_new/animations/fadeAnimation.dart';

class DetailsNewDroneApp extends StatefulWidget {
  DetailsNewDroneApp():super();
  @override
  _DetailsNewDroneAppState createState() => _DetailsNewDroneAppState();
}

class _DetailsNewDroneAppState extends State<DetailsNewDroneApp> {
  bool _stateChange;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _stateChange = true;
  }
  onTap(){
    setState(() {
      _stateChange = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          print("image tap detail new drone");
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/drone3.jpg"),
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
                    crossAxisAlignment: CrossAxisAlignment.start
                    ,
                    children: [
                      FadeAnimationTransitionUi(
                        delay:.5,
                        child: Text(
                          "Alpha 214",
                          style: TextStyle(color: Colors.white,fontSize: 25),
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FadeAnimationTransitionUi(delay:1.0 ,child: Text("Autonomie : 13h",style: TextStyle(color: Colors.white,fontSize: 20),)),
                          FadeAnimationTransitionUi(
                            delay: 1.4,
                            child:IconButton(
                                icon: _stateChange? Icon(Icons.favorite_border, size: 30,):Icon(Icons.favorite),
                              onPressed: (){
                                  onTap();
                                  print("click change state");
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0,),
                      FadeAnimationTransitionUi(
                        delay: 1.6,
                        child: Text(
                            "mini descirption mini descirption mini descirption ",
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
