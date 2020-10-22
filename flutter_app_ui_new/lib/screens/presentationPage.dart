import 'package:flutter/material.dart';
import 'package:flutter_app_ui_new/animations/fadeAnimation.dart';
import 'package:flutter_app_ui_new/screens/detailsAllDrone.dart';
import 'package:flutter_app_ui_new/screens/detailsNewDrone.dart';
import 'package:flutter_app_ui_new/screens/recommandationsAll.dart';
import 'package:flutter_app_ui_new/tools/drawer.dart';

class PresentationPageApp extends StatefulWidget {
  PresentationPageApp():super();
  @override
  _PresentationPageAppState createState() => _PresentationPageAppState();
}

class _PresentationPageAppState extends State<PresentationPageApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Presentation"),
        backgroundColor: Colors.blueGrey[600].withOpacity(.7),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_basket),
          ),
        ],
      ),
      drawer: DrawerAppUi(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FadeAnimationTransitionUi(delay: .2,child: Text('Recommandation',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),)),
                  FadeAnimationTransitionUi(
                    delay: .6,
                    child: Padding(
                      padding: const EdgeInsets.only(right:20.0),
                      child: InkWell(
                          onTap: (){
                            print("InKWell");
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>RecommandationAll()));
                          },
                          child: Text('All',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20.0),),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Expanded(
                  flex: 2,
                  child: FadeAnimationTransitionUi(
                    delay: 2.1,
                    child: Container(
                      decoration: BoxDecoration(

                      ),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 12,
                        itemBuilder: (BuildContext,index){
                          return GestureDetector(
                            onTap: (){
                              print("Gesture mini card");
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsAllDroneUiAppPage()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 12),
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.orange,
                                image: DecorationImage(
                                    image: AssetImage("images/drone1.jpg"),
                                    fit: BoxFit.cover
                                ),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.black.withOpacity(.2)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(1.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("new",style: TextStyle(color: Colors.white.withOpacity(.5),fontSize: 15)),

                                          IconButton(
                                            icon: Icon(Icons.favorite_border,size: 30,),
                                            onPressed: (){
                                              print("Icon 2");
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Alpha 214",style: TextStyle(color: Colors.white.withOpacity(.5),fontSize: 15)),

                                          Text("\$235",style: TextStyle(color: Colors.white,fontSize: 15),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
              ),
              SizedBox(height: 10,),
              FadeAnimationTransitionUi(
                  delay: 2.5,
                  child: Text(' New Drone',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),)),
              Expanded(
                flex: 4,
                child: FadeAnimationTransitionUi(
                  delay: 2.9,
                  child: Container(
                    decoration: BoxDecoration(

                    ),
                    child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext,index){
                          return GestureDetector(
                            onTap: (){
                              print("gesture new drone");
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsNewDroneApp()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 10),
                              width: 300,
                              decoration: BoxDecoration(
                                color:Colors.red,
                                borderRadius: BorderRadius.circular(20.0),
                                image: DecorationImage(
                                    image: AssetImage("images/drone3.jpg"),
                                    fit: BoxFit.cover
                                ),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.black.withOpacity(.3)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("new",style: TextStyle(color: Colors.white.withOpacity(.5),fontSize: 25)),

                                            IconButton(
                                                icon: Icon(Icons.favorite_border,size: 30,),
                                                onPressed: (){
                                                  print("Icon 2");
                                                },
                                            ),
                                          ],
                                        ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Alpha 214",style: TextStyle(color: Colors.white.withOpacity(.5),fontSize: 25)),

                                          Text("\$235",style: TextStyle(color: Colors.white,fontSize: 25),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.center_focus_weak), onPressed: () {},),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.menu), onPressed: () {},),
            IconButton(icon: Icon(Icons.search), onPressed: () {},),
          ],
        ),
      ),
    );
  }


}
