import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';
import 'package:path/path.dart';
import 'package:signuplogin/car.dart';
import 'package:signuplogin/home.dart';
import 'package:signuplogin/login.dart';
import 'package:signuplogin/signup.dart';



class test extends StatelessWidget {
  final String o;


  const test({required this.o});


  @override
  Widget build(BuildContext context) {
    final phnumber = TextEditingController();
    final password = TextEditingController();
    var a={};
    var b={};

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("hi"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              scale: 2.0,
              image: AssetImage("assets/images/img_2.jpg"),
              opacity: 50,
              fit: BoxFit.cover
          ),
        ),

        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(o,
                style: TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                  fontSize: 40,

                ),
              ),
            ElevatedButton(
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signup()),
                  )
;







                },



                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // background
                  onPrimary: Colors.white, // foreground

                  shape: RoundedRectangleBorder( //to set border radius to button
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),

                child: Text('database',
                  style: TextStyle(fontSize: 18),
                ),
              )
          ],
    ),
      ),
    ),

                 );
  }


}