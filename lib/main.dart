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
        body: Center(
            child: Container(
                color: Colors.white,
                child: Padding(
                    padding: const EdgeInsets.all(36.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: 45.0),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Enter your username'),
                          ),
                          SizedBox(height: 25.0),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Enter your password'),
                          ),
                          SizedBox(height: 45.0),
                          FlatButton(
                            color: Colors.blue,
                            onPressed: () {
                              FlutterToast(context).showToast(
                                  child: Text('You clicked on the button',
                                      style: TextStyle(
                                          color: Colors.red,
                                          backgroundColor: Colors.grey,
                                        letterSpacing: 1.0
                                      )
                                  ),
                                  toastDuration: Duration(seconds: 2),
                                  gravity: ToastGravity.BOTTOM);
                            },
                            child: Text('Hello'),
                          )
                        ]
                    )
                )
            )
        )
    );
  }
}
