import 'package:explore_flutter/control.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title:new  Text("Home"),
        ),
        //drawer: Control(),
        body: new Center(child: Text("This is home page")),
      backgroundColor: Colors.blue,
    );
  }
}
