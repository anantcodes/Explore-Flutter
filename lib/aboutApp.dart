import 'package:explore_flutter/control.dart';
import 'package:flutter/material.dart';
class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title:new  Text("About App"),
      ),
      drawer: new DrawerCodeOnly(),
      body: new Center(child: Text("This is about app page")),
      backgroundColor: Colors.green,
    );
  }
}
