import 'package:flutter/material.dart';


AppBar appbar(String title) {

return AppBar(
    centerTitle: true,
    leading: Icon(Icons.menu),
    actions: [
      IconButton(onPressed: () { print("Settings"); }, icon: Icon(Icons.search),),
      Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)
        ),
        child:ClipOval(
          child: Image.asset(
          'lib/Images/my-photo.jpg',
          //  fit: BoxFit.cover,
        ),
        ) 
      )
    ],
  );
}
