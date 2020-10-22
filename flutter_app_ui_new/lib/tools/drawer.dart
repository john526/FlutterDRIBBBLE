import 'package:flutter/material.dart';
import 'package:flutter_app_ui_new/screens/history.dart';
import 'package:flutter_app_ui_new/screens/presentationPage.dart';
import 'package:flutter_app_ui_new/screens/recommandationsAll.dart';
import 'package:flutter_app_ui_new/screens/shopping.dart';


class DrawerAppUi extends StatefulWidget {
  DrawerAppUi():super();
  @override
  _DrawerAppUiState createState() => _DrawerAppUiState();
}

class _DrawerAppUiState extends State<DrawerAppUi> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          //header
          UserAccountsDrawerHeader(
            accountName: Text('john smith'),
            accountEmail: Text('+225 0215478855'),
            currentAccountPicture:GestureDetector(
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(image: AssetImage("images/drone2.jpg"),fit: BoxFit.cover)
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
          //body
          InkWell(
            onTap: (){
              print("navigator presentaion");
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PresentationPageApp()));
            },
            child: ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home, color: Colors.black12,),
            ),
          ),
          InkWell(
            onTap: (){
              print("navigator recommandation");
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RecommandationAll()));
            },
            child: ListTile(
              title: Text('All Drone'),
              leading: Icon(Icons.airplanemode_active, color: Colors.black12,),
            ),
          ),
          InkWell(
            onTap: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAccountApp()));
            },
            child: ListTile(
              title: Text('My Profile'),
              leading: Icon(Icons.person, color:Colors.black12),
            ),
          ),
          InkWell(
            onTap: (){
              print("navigate shopping list");
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ShoppingListAppPage()));
            },
            child: ListTile(
              title: Text('Shopping'),
              leading: Icon(Icons.shopping_basket,color:Colors.black12),
            ),
          ),
          InkWell(
            onTap: (){
              print("navigate history");
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HistoryAppUiPage()));
            },
            child: ListTile(
              title: Text('History'),
              leading: Icon(Icons.history, color:Colors.black12),
            ),
          ),
          InkWell(
            onTap: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>ExploitationAppPage()));
            },
            child: ListTile(
              title: Text('Changed Color'),
              leading: Icon(Icons.swap_horizontal_circle, color:Colors.black12),
            ),
          ),
          InkWell(
            onTap: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingAppPage()));
            },
            child: ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings, color:Colors.black12),
            ),
          ),
          Divider(),
          InkWell(
            onTap: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpAppPage()));
            },
            child: ListTile(
              title: Text('Help '),
              leading: Icon(Icons.help, color:Colors.black12),
            ),
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              title: Text("A propos"),
              leading: Icon(Icons.help, color:Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
