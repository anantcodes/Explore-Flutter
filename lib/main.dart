import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    home: Exp(),
  ));
}
class Exp extends StatefulWidget {
  @override
  _ExpState createState() => _ExpState();
}

class _ExpState extends State<Exp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
      ),
      body: FlatButton(
        color: Colors.blue,
        onPressed: (){
         FlutterToast(context).showToast(child: Text(
           'You clicked on the button',
         style: TextStyle(
           color: Colors.red,
           backgroundColor: Colors.blue
         )),
         toastDuration: Duration(seconds: 2),
         gravity: ToastGravity.BOTTOM);
        },
        child: Text('Hello'),
      )
    );
  }
}

