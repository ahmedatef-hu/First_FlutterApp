import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fristflutter/Components/ContactCard.dart';

class Listscreen extends StatelessWidget {
  const Listscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              ListView(
            padding: const EdgeInsets.all(8),
            children: [
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
              ContactCard(name: "name", job: "job", letter: "l", Price: "Price", desc: "desc"),
            ],
          ),
          ListTile(
            
          )
            ],
          )
          
        ],
      ),
    );
  }
  
}