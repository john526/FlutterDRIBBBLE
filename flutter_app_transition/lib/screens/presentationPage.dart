import 'package:flutter/material.dart';
import 'package:flutter_app_transition/animation/fadeAnimationPage.dart';


class PresentationPageApp extends StatefulWidget {
  PresentationPageApp():super();
  @override
  _PresentationPageAppState createState() => _PresentationPageAppState();
}

class _PresentationPageAppState extends State<PresentationPageApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("hello",style: TextStyle(color: Colors.blue),),
        centerTitle: true,
        brightness: Brightness.light,
        actions: [
          IconButton(
              icon: Icon(Icons.shopping_basket, color:Colors.grey[800]),
              onPressed: ()=>print("display shopping basket"),
          ),
        ],
        backgroundColor: Colors.grey[100],
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeAnimationPageApp(
                    delay: 1.0,
                    child: Text(
                      "Food Delivery",
                      style: TextStyle(color:Colors.grey[8],fontSize: 30.0,fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        FadeAnimationPageApp(
                          delay: 1.0,
                          child: makeCategory(isActive:true,title:" bio food"),
                        ),
                        FadeAnimationPageApp(
                          delay: 1.3,
                          child: makeCategory(isActive:false,title:"drink"),
                        ),
                        FadeAnimationPageApp(
                          delay: 1.4,
                          child: makeCategory(isActive:false,title:"pizza"),
                        ),
                        FadeAnimationPageApp(
                          delay: 1.5,
                          child: makeCategory(isActive:false,title:"fast food"),
                        ),
                        FadeAnimationPageApp(
                          delay: 1.6,
                          child: makeCategory(isActive:false,title:"meals"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ) ,
            ),
            FadeAnimationPageApp(
              delay: 1,
              child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('Free Delivery',style: TextStyle(color: Colors.grey[700],fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal:20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    makeItem(image:"images/eat.jpg"),
                    makeItem(image:"images/oranges.jpg"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }

 Widget makeCategory({bool isActive, String title}){
    return AspectRatio(
        aspectRatio: isActive ? 3 : 2.0/1,
      child: Container(
        margin: EdgeInsets.only(right:10),
        decoration: BoxDecoration(
          color: isActive ? Colors.yellow[700] : Colors.white,
          borderRadius: BorderRadius.circular(50.0)
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: isActive ? Colors.white : Colors.grey[500],
                fontWeight: isActive ? FontWeight.bold : FontWeight.w100,
                fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
 }

 Widget makeItem({String image}){
    return AspectRatio(
      aspectRatio: 1/1.5,
      child: GestureDetector(
        onTap: ()=>print("makeItem"),
        child: Container(
          margin: EdgeInsets.only(right: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  stops: [.2,.9],
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.3)
                  ],
              ),
            ),
            child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.favorite,color: Colors.white,),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("\$ 15.0", style: TextStyle(color:Colors.white, fontSize: 40,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Text("\$ vegetarian burger",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),)
                      ],
                    ),
                  ],
                ),
            ),
          ),
        ),
      ),
    );
 }
}
