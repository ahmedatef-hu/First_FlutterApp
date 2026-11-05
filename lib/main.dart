import 'package:flutter/material.dart';
import 'package:fristflutter/Pages/DashboardScreen.dart';
import 'package:fristflutter/Pages/HomeScreen.dart';
import 'package:fristflutter/Pages/ListScreen.dart';
import 'package:fristflutter/Pages/ListViewScreen.dart';
import 'package:fristflutter/Pages/LoginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginscreen(),
    );
  }
}

