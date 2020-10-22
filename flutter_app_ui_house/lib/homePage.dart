import 'package:flutter/material.dart';
import 'package:flutter_app_ui_house/animations/animation.dart';
import 'dart:math' as math;

import 'package:flutter_app_ui_house/screens/detailsHouseViewAll.dart';
import 'package:flutter_app_ui_house/screens/detailsPopular.dart';

class HomePageUiApp extends StatefulWidget {
  HomePageUiApp():super();
  @override
  _HomePageUiAppState createState() => _HomePageUiAppState();
}

class _HomePageUiAppState extends State<HomePageUiApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(),
          child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SimpleAnimationOpacityTween(
                          delay:1.8,
                          child: Text(
                              "Hello Ama",
                              style: TextStyle(color:Colors.black.withOpacity(.3),fontSize: 20),
                          ),
                        ),
                        SimpleAnimationOpacityTween(
                          delay: 1.8,
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                image: AssetImage("images/architecture-1477099_1280.jpg"),
                                fit: BoxFit.cover
                              ),
                              color: Colors.yellow
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SimpleAnimationOpacityTween(
                    delay: 1.6,
                    child: Text(
                        "Find Your House",
                        style: TextStyle(color: Colors.black54,fontSize: 25),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SimpleAnimationOpacityTween(
                    delay: 1.5,
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[500].withOpacity(.6),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Row(
                        children: [
                          SimpleAnimationOpacityTween(
                            delay:1.6,
                            child: IconButton(
                                icon: Icon(
                                    Icons.search,
                                    color: Colors.white54.withOpacity(.8)
                                ),  onPressed: (){
                                  print("icon search");
                            },
                            ),
                          ),
                          SimpleAnimationOpacityTween(
                            delay: 1.6,
                            child: Text(
                                "Search your house",
                                 style:TextStyle(fontSize: 15,color: Colors.white54.withOpacity(.8)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  SimpleAnimationOpacityTween(delay: 1.6,child: Text("Popular House",style: TextStyle(color: Colors.black54,fontSize: 20),)),
                  SizedBox(height: 20,),
                  Container(
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
                              return SimpleAnimationOpacityTween(
                                delay: 1.8,
                                child: GestureDetector(
                                  onTap: (){
                                    print("mini detail container down");
                                    Navigator.push(context,MaterialPageRoute(builder:(context)=>DetailsPopularUiApp()));
                                  },
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex:3,
                                        child: Container(
                                          width: 200,
                                          margin: EdgeInsets.only(right: 12),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(topLeft:Radius.circular(20.0),topRight: Radius.circular(20.0)),
                                              image: DecorationImage(
                                                  image: AssetImage("images/architecture-1477099_1280.jpg"),//architecture-1477041_1280.jpg
                                                  fit: BoxFit.cover
                                              ),
                                              color: Colors.green
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex:2,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "House",
                                              style: TextStyle(color: Colors.black.withOpacity(.9),fontSize: 18),
                                            ),
                                            Text(
                                              "beautiful House",
                                              style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 10),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(1.0),
                                              child: Container(
                                                width: 200,
                                                decoration: BoxDecoration(
                                                    color: Colors.grey.withOpacity(.4),
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("\$45214",style: TextStyle(color: Colors.lightBlue),),
                                                    Icon(Icons.star_border, color: Colors.green,),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SimpleAnimationOpacityTween(
                        delay:1.0,
                        child: SimpleAnimationOpacityTween(
                          delay: 1.7,
                          child: Text(
                              "House ",
                              style: TextStyle(color: Colors.black12,fontSize: 25),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          print("View All");
                        },
                        child: SimpleAnimationOpacityTween(
                          delay: 1.4,
                          child: Text(
                            "View all",
                            style: TextStyle(color: Colors.green,fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex:2,
                          child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (BuildContext,index){
                              return SimpleAnimationOpacityTween(
                                delay: 1.9,
                                child: GestureDetector(
                                  onTap: (){
                                    print("mini detail container down");
                                    Navigator.push(context,MaterialPageRoute(builder:(context)=>DetailsHouseViewAll()));
                                  },
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex:3,
                                        child: Container(
                                          width: 10,
                                          height: 200,
                                          margin: EdgeInsets.only(top: 12),
                                          decoration: BoxDecoration(
                                            color:Colors.red,
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20.0)),
                                            image: DecorationImage(
                                                image: AssetImage("images/architecture-1477041_1280.jpg"),
                                                fit: BoxFit.cover
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex:6,
                                        child: Container(
                                          width: double.infinity,
                                          height: 200,
                                          margin: EdgeInsets.only(top: 12),
                                          decoration: BoxDecoration(

                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(14),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("The westin Dakar",style: TextStyle(fontSize: 15),),
                                                Row(
                                                  children: [
                                                    Icon(Icons.place,color: Colors.black12),
                                                    Text("Lodon 457 Street",style: TextStyle(color: Colors.black12),)
                                                  ],
                                                ),
                                                Text("\$1254",style: TextStyle(fontSize: 18)),
                                                Padding(
                                                  padding: const EdgeInsets.all(2.0),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      onIcon(Icons.add_alarm),
                                                      onIcon(Icons.wifi_lock),
                                                      onIcon(Icons.airline_seat_individual_suite),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex:2,
                                        child: GestureDetector(
                                          onTap: ()=>print("buy now"),
                                          child: Container(
                                              width: 10,
                                              height: 200,
                                              margin: EdgeInsets.only(top: 12),
                                              decoration: BoxDecoration(
                                                color:Colors.green,
                                                borderRadius: BorderRadius.circular(20),

                                              ),
                                              child: RotatedBox(
                                                quarterTurns: -1,
                                                child: Center(
                                                  child: new Text("Buy Now",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                                ),
                                              )
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ),
        ),
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SimpleAnimationOpacityTween(
        delay: 1.6,
        child: FloatingActionButton(
          child: const Icon(Icons.present_to_all), onPressed: () {},),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SimpleAnimationOpacityTween(delay:1.6,child: IconButton(icon: Icon(Icons.home), onPressed: () {},)),
            SimpleAnimationOpacityTween(delay: 1.8,child: IconButton(icon: Icon(Icons.search), onPressed: () {},)),
          ],
        ),
      ),
    );
  }
  
  Widget onIcon(IconData iconData){
    return Container(
      width: 40,
      height: 40,
      margin: EdgeInsets.only(right: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(.4)
      ),
      child: IconButton(icon: Icon(iconData,color: Colors.green), onPressed: ()=>print("icon 3254")),
    ) ;
  }
}



//Invalid depfile: /home/fev/flutter/flutter_app_ui_house/.dart_tool/flutter_build/7a24ed81e90f700dc73a4125065bab83/kernel_snapshot.d