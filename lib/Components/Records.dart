
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Records extends StatelessWidget{
  final String title;
  final String subtitle;
  final List<String> trailing;
  final Icon LeadingIcon;

  const Records({
    super.key,
    required this.title,
    required this.subtitle,
    required this.LeadingIcon,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return 
      Container(
        margin: EdgeInsets.only(top: 20, bottom: 10, right: 20),
        // padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 6,
              blurStyle: BlurStyle.outer,
              offset: Offset(0, 2),
              spreadRadius: 6
            )
          ]
        ),
        child: ListTile(
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          subtitle: Text(subtitle, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10),),
          leading: Container(
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: const Color.fromARGB(255, 255, 153, 0)
            ),
            child: LeadingIcon,
            ),
          trailing: Column(
            children: [
              Text(trailing[0]),
              Text(trailing[1], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.orange),),
            ],
          ),
        ),
      );
  }
  
}