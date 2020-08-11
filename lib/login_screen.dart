import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Exp extends StatefulWidget {
  @override
  _ExpState createState() => _ExpState();
}

class _ExpState extends State<Exp> {


  TextEditingController emailController = new TextEditingController();      //To store email
  TextEditingController passwordController=new TextEditingController();   //To store password




  @override
  Widget build(BuildContext context) {



    return Scaffold(

        appBar: AppBar(
          title: Text('Explore to learn'),
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
                            controller: emailController,      //email
                            decoration: InputDecoration(
                                labelText: 'Enter your email'),

                          ),
                          SizedBox(height: 25.0),
                          TextField(
                            controller: passwordController,   //password
                            decoration: InputDecoration(
                                labelText: 'Enter your password'),
                              obscureText: true,     //text hiding
                          ),
                          SizedBox(height: 45.0),
                          FlatButton(
                            color: Colors.blue,
                            onPressed: () {
                              if(emailController.text=='anant1234@gmail.com'&& passwordController.text=='anant') {
                            Navigator.pushNamed(context, '/control');    //push to next route
                                FlutterToast(context).showToast(
                                    child: Text('Login successfull',
                                        style: TextStyle(
                                            color: Colors.red,
                                            backgroundColor: Colors.grey,
                                            letterSpacing: 1.0)
                                    ),
                                    toastDuration: Duration(seconds: 2),
                                    gravity: ToastGravity.BOTTOM);
                              }
                              else{
                                FlutterToast(context).showToast(
                                    child: Text('Login unsuccessfull',
                                        style: TextStyle(
                                            color: Colors.red,
                                            backgroundColor: Colors.grey,
                                            letterSpacing: 1.0)
                                    ),
                                    toastDuration: Duration(seconds: 2),
                                    gravity: ToastGravity.BOTTOM);
                              }
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
