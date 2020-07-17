import 'package:explore_flutter/control.dart';
import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title:new  Text("Profile"),
      ),
      drawer: new DrawerCodeOnly(),
      body: new Center(child: Text("This is profile page")),
      backgroundColor: Colors.red,
    );
  }
}
