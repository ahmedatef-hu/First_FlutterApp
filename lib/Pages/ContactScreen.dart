import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fristflutter/Components/AppBar.dart';
import 'package:fristflutter/Components/ContactCard.dart';

class Contactscreen extends StatelessWidget {
  const Contactscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar("Contactscreen"),
      body: Column(
        children: [
          // ContactCard(name: "name", job: "job", letter: "B"),
          // ContactCard(name: "name", job: "job", letter: "A"),
          // ContactCard(name: "name", job: "job", letter: "A"),
          // ContactCard(name: "nayuiugyme", job: "job", letter: "G"),
          // ContactCard(name: "name", job: "job", letter: "A"),
          // ContactCard(name: "name", job: "job", letter: "A"),
        ],
      ),
    );
  }
}