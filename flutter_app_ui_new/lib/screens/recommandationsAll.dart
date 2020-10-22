import 'package:flutter/material.dart';
import 'package:flutter_app_ui_new/animations/fadeAnimation.dart';
import 'package:flutter_app_ui_new/tools/drawer.dart';


class RecommandationAll extends StatefulWidget {
  RecommandationAll():super();
  @override
  _RecommandationAllState createState() => _RecommandationAllState();
}

class _RecommandationAllState extends State<RecommandationAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Recommandation"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[600].withOpacity(.7),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_basket),
          ),
        ],
      ),
      drawer: DrawerAppUi(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FadeAnimationTransitionUi(
          delay: 1.5,
          child: Container(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext,index){
                  return GestureDetector(
                    onTap: (){
                      print("recommandation");
                    },
                    child: Container(
                      height: 250,
                      margin: EdgeInsets.only(top: 12),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30),
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
                            ]
                          ),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  FadeAnimationTransitionUi(
                                    delay: 2.1,
                                    child: Text(
                                        "phantom 14",
                                         style: TextStyle(color: Colors.white.withOpacity(.8),fontSize: 25),
                                    ),
                                  ),
                                  FadeAnimationTransitionUi(
                                    delay: 2.7,
                                    child: Text(
                                        "\$125",
                                        style: TextStyle(color: Colors.white.withOpacity(.8),fontSize: 23),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
            ),
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
