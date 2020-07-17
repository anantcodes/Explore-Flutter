import 'package:explore_flutter/homePage.dart';
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
      drawer: Drawer(
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
              title: Text('Item 1'),
              onTap: () {




             //  Navigator.of(context).pushReplacementNamed('/homePage');
                
                Navigator.push(context, new MaterialPageRoute(builder: (context)=>new HomePage()));


              // Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

