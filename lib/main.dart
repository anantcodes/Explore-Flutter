import 'package:explore_flutter/control.dart';
import 'package:explore_flutter/homePage.dart';
import 'package:flutter/material.dart';
import 'package:explore_flutter/login_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Exp(),
    routes: {

      '/control':(context)=>Control(),
     // '/homePage':(context)=>HomePage()
    },
  ));
}

