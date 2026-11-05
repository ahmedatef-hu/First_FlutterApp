import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fristflutter/Components/AppBar.dart';
import 'package:fristflutter/Components/NavBar.dart';
import 'package:fristflutter/Pages/ContactScreen.dart';
import 'package:fristflutter/Pages/HomeScreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar("ProfileScreen"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 400,
                height: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(255, 0, 116, 4), width: 3),
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(188, 117, 211, 120)
                ),
                child: Column(
                  children: [
                     Container(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      decoration: BoxDecoration(
                        
                      ),
                      child: 
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.account_circle,size: 100,)
                      ],
                    ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text("Eng Ahmed Atef", style: TextStyle(color: const Color.fromARGB(255, 1, 89, 4), fontWeight: FontWeight.bold)),
                          Text("Flutter Devoloper | Trainer", style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w200, fontSize: 12)),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 50,top: 5, right: 50, bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromARGB(255, 31, 70, 33),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.message, color: Colors.white,),
                                Text("Message", style: TextStyle(color: Colors.white),)
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 50,top: 5, right: 50, bottom: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromARGB(255, 197, 134, 0),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.call, color: Colors.white,),
                                Text("Message", style: TextStyle(color: Colors.white),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              )
            ],
          )
        ],
      )
        // bottomNavigationBar: NavBar(),
    );
  }
}