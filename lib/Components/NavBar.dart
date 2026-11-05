import 'package:flutter/material.dart';

BottomNavigationBar NavBar() {
  return BottomNavigationBar(items: [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
  ]);
}