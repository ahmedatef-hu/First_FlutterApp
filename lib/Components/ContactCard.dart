import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final String name;
  final String job;
  final String letter;
  final String Price;
  final String desc;

  const ContactCard({
    super.key,
    required this.name,
    required this.job,
    required this.letter,
    required this.Price,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ], 
      ),
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Colors.blueAccent,
            ),
            padding: EdgeInsets.all(17),
            margin: EdgeInsets.only(left: 10, right: 15),
            child: Text(
              letter,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    job,
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    desc,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    Price,
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              )
              
            ],
          ),
        ],
      ),
    );
  }
}