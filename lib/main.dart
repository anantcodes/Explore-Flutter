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



  String username;
  String password;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Widget buildUsername(){
    return null;
  }

  Widget buildPassword(){
    return null;
  }




  @override
  Widget build(BuildContext context) {
//    String password='hi';
//    String username='hi';

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
                          TextField(
                            decoration: InputDecoration(
                                labelText: 'Enter your username'),
//                            onFieldSubmitted: (String text) {
//                              username = text;
//                            },
                          ),
                          SizedBox(height: 25.0),
                          TextField(
                            decoration: InputDecoration(
                                labelText: 'Enter your password'),
//                            onFieldSubmitted: (String text) {
//                              password = text;
//                            },
                          ),
                          SizedBox(height: 45.0),
                          FlatButton(
                            color: Colors.blue,
                            onPressed: () {
//                              if (username == 'anant' && password == 'anant') {
//                                print(username);
//                                print(password);
                                FlutterToast(context).showToast(
                                    child: Text('You clicked on the button',
                                        style: TextStyle(
                                            color: Colors.red,
                                            backgroundColor: Colors.grey,
                                            letterSpacing: 1.0)
                                    ),
                                    toastDuration: Duration(seconds: 2),
                                    gravity: ToastGravity.BOTTOM);
//                              }
                            },
                            child: Text('Next'),
                          )
                        ]
                    )
                )
            )
        )
    );
  }
}
