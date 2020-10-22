import 'package:flutter/material.dart';

class UsernameSignUpUiApp extends StatefulWidget {
  @override
  _UsernameSignUpUiAppState createState() => _UsernameSignUpUiAppState();
}

class _UsernameSignUpUiAppState extends State<UsernameSignUpUiApp> {
  TextEditingController _usernamController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 58,
          margin: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
              color:Colors.grey,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(0,4),
                ),
              ]
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 4,left: 24,right: 16),
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(
                    fontSize: 16,
                  ),
                  enabledBorder: InputBorder.none,
                  suffixIcon: Icon(Icons.email)
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: double.infinity,
          height: 58,
          margin: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
              color:Colors.black12.withOpacity(0.3),
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(0,4),
                ),
              ]
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 4,left: 24,right: 16),
            child: TextField(
              controller: _usernamController,
              decoration: InputDecoration(
                  hintText: "Username",
                  hintStyle: TextStyle(
                    fontSize: 16,
                  ),
                  enabledBorder: InputBorder.none,
                  suffixIcon: Icon(Icons.person)
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: double.infinity,
          height: 58,
          margin: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
              color:Colors.black12.withOpacity(0.3),
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12.withOpacity(0.3),
                  blurRadius: 4,
                  offset: Offset(0,4),
                ),
              ]
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 4,left: 24,right: 16),
            child: TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                  hintText: "PassWord",
                  hintStyle: TextStyle(
                    fontSize: 16,
                  ),
                  enabledBorder: InputBorder.none,
                  suffixIcon: Icon(Icons.remove_red_eye)
              ),
            ),
          ),
        ),

      ],
    );
  }
}
