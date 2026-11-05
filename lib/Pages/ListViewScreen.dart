import 'package:flutter/material.dart';

class Listviewscreen extends StatelessWidget {
  const Listviewscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
  children: [
    Text('data'),
    
    Flexible(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal, 
        child: Row(
          children: [
            Container(color: Colors.red, width: 150),
            Container(color: Colors.green, width: 150),
            Container(color: Colors.blue, width: 150),
          ],
        ),
      ),
    ),
    
    Text('Data'),
  ],
)
    );
    // TODO: implement build
    throw UnimplementedError();
  }

  
}