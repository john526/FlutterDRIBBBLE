import 'package:flutter/material.dart';


class AppBarUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.blueGrey[600].withOpacity(.7),
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_basket),
        ),
      ],
    );
  }
}
