import 'package:explore_flutter/home.dart';
import 'package:flutter/material.dart';
import 'package:explore_flutter/login_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Exp(),
    routes: {

      '/home':(context)=>Home()
    },
  ));
}

