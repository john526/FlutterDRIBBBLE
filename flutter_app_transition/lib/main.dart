import 'package:flutter/material.dart';
import 'package:flutter_app_transition/homePage.dart';

//https://www.youtube.com/watch?v=lff21mmYhvQ
//https://www.youtube.com/watch?v=3scHvCgi9iY
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePageApp(),
    );
  }
}


