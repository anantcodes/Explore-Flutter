import 'package:explore_flutter/homePage.dart';
import 'package:explore_flutter/profilePage.dart';
import 'package:flutter/material.dart';



class Control extends StatefulWidget {
  @override
  _ControlState createState() => _ControlState();
}
class _ControlState extends State<Control> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      drawer: DrawerCodeOnly(),
    );
  }
}


class DrawerCodeOnly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {




              //  Navigator.of(context).pushReplacementNamed('/homePage');
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>new HomePage()));


              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>new ProfilePage()));
            },
          ),
        ],
      ),
    );
  }
}


