import 'package:flutter/material.dart';
import 'package:flutter_app_ui_new/animations/fadeAnimation.dart';
import 'package:flutter_app_ui_new/tools/appBar.dart';
import 'package:flutter_app_ui_new/tools/drawer.dart';


class ShoppingListAppPage extends StatefulWidget {
  ShoppingListAppPage():super();
  @override
  _ShoppingListAppPageState createState() => _ShoppingListAppPageState();
}

class _ShoppingListAppPageState extends State<ShoppingListAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Shopping"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[600].withOpacity(.7),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_basket),
          ),
        ],
      ),
      drawer: DrawerAppUi(),
      body: Container(
        decoration: BoxDecoration(

        ),
        child: ListView.builder(
            itemCount: 15,
            itemBuilder: (BuildContext,index){
              return FadeAnimationTransitionUi(
                delay: 3.2,
                child: Dismissible(
                  key: Key("15"),//itemsModel.id.toString()
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction){
                    setState(() {
                      //modelGroupeLAppChatApi.removeAt(itemsModel.id);
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      margin: EdgeInsets.only(top:10),
                      decoration: BoxDecoration(
                        color: Colors.grey[500].withOpacity(.7),
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage("images/aircraft.jpg"),
                                      fit:BoxFit.cover
                                    )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                          "Phantom 14",
                                        style: TextStyle(color: Colors.white.withOpacity(.9)),
                                      ),
                                      Text(
                                          '\$254',
                                        style: TextStyle(color: Colors.white.withOpacity(.9)),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text(
                                "10/17/2020",
                              style: TextStyle(color: Colors.white.withOpacity(.9)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
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
