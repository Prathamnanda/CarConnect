


import 'package:flutter/material.dart';
import 'package:signuplogin/car.dart';
import 'package:signuplogin/sellmain.dart';
import 'package:signuplogin/socialmedia.dart';



class home extends StatelessWidget {

  const home({super.key});







  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Stack(
          children:[
            Container(
            color: Colors.blue,
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
              mainAxisAlignment: MainAxisAlignment.end,

              children: <Widget>[


                Padding(
                  padding: const EdgeInsets.only(right:180,bottom: 8),
               child: Row(
                  children:[
                    Builder(builder: (context){
               return IconButton(
                onPressed: () { Scaffold.of(context).openDrawer(); },
                      icon: const Icon(Icons.menu),
               );
                    },



               ),
               Text(" CarDekho",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),),
            ],
                ),

                ),

                Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(
            ),
            borderRadius: BorderRadius.only(topRight:Radius.circular(20),topLeft: Radius.circular(20) )),


                  height: 773,
                  width: 500,
                  child: Column(
                  children:[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.white, borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: TextField(
                            decoration: InputDecoration(

                                prefixIcon: const Icon(Icons.search),
                                suffixIcon: IconButton(
                                  icon: const Icon(Icons.clear),
                                  onPressed: () {
                                    /* Clear the search field */
                                  },
                                ),
                                hintText: 'Search cars by model,brand.....',
                                border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Container(
                        height:250,
                      child: ListView(

                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                        add(img: "add1.jpg",),
                          add(img: "add2.jpg",),
                          add(img: "add3.jpg",),
                          add(img: "add4.jpg",),
                          add(img: "add5.jpg",),

                        ],
                      ),
                    ),





                InkWell(
                  onTap: () {
                      Navigator.push(
                      context,

                        MaterialPageRoute(builder: (context) => car()),
    );
    },


                  child: Card(

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      //set border radius more than 50% of height and width to make circle
                    ),
                    child: SizedBox(
                      width: 380,
                      height: 140,
                      child: Row(

                        children: [
                          Column(
                            children: [
                              Padding(


                                padding: EdgeInsets.only(top: 20, right: 20),
                                child: Text('Buy cars',

                                  style: TextStyle(fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 10),
                                child: Text(' Choose from 1000+',
                                  style: TextStyle(fontSize: 13,

                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text('MRL certified cars',
                                  style: TextStyle(fontSize: 13,

                                  ),
                                ),
                              ),
                            ],
                          ),


                          Padding(
                            padding: const EdgeInsets.only(left: 38),
                            child: ClipRRect(

                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/carbuy.jpeg',
                                cacheWidth: 210,
                                cacheHeight: 150,
                                fit: BoxFit.scaleDown,

                              ),
                            ),
                          ),
                        ],


                      ),
                    ),


                  ),
                ),

                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,

                      MaterialPageRoute(builder: (context) => sell()),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      //set border radius more than 50% of height and width to make circle
                    ),
                    child: SizedBox(
                      width: 380,
                      height: 140,
                      child: Row(

                        children: [
                          Column(
                            children: [
                              Padding(


                                padding: EdgeInsets.only(top: 20),
                                child: Text(' Sell my car',

                                  style: TextStyle(fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(left: 10, top: 10),
                                child: Text(' Get the best price for',
                                  style: TextStyle(fontSize: 13,

                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text('yours car instantly.',
                                  style: TextStyle(fontSize: 13,

                                  ),
                                ),
                              ),
                            ],
                          ),


                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: ClipRRect(

                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/sellcar.jpeg',
                                cacheWidth: 210,
                                cacheHeight: 150,
                                fit: BoxFit.scaleDown,

                              ),
                            ),
                          ),
                        ],


                      ),
                    ),


                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    //set border radius more than 50% of height and width to make circle
                  ),
                  child: SizedBox(
                    width: 380,
                    height: 140,
                    child: Row(

                      children: [
                        Column(
                          children: [
                            Padding(


                              padding: EdgeInsets.only(top: 20, left: 10),
                              child: Text(' Rent a car',

                                style: TextStyle(fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(' Self drive rental',
                                style: TextStyle(fontSize: 13,

                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 14, top: 10),
                              child: Text('car on low prices.',
                                style: TextStyle(fontSize: 13,

                                ),
                              ),
                            ),


                          ],

                        ),



                        Padding(
                          padding: const EdgeInsets.only(left: 47),
                          child: ClipRRect(

                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('assets/images/rentcar.jpeg',
                              cacheWidth: 210,
                              cacheHeight: 150,
                              fit: BoxFit.scaleDown,

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                  ],
                ),
                ),





                      ],
                    ),
                  ),


              ],
            ),

          ),





      drawer: drawer1(),

    );
  }
}

class drawer1 extends StatelessWidget {
  const drawer1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 250,
            child: const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
          ),
          ListTile(
            title: Text('Others',
              style: TextStyle(fontSize: 25,

              ),
            ),

          ),
          ListTile(
            title: const Text('Favourites'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Feedback'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Visitor agreement'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Privacy policy'),
            onTap: () => showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
    title: const Text('AlertDialog Title'),
    content: const Text(''),
    actions: <Widget>[
    TextButton(
    onPressed: () => Navigator.pop(context, 'Cancel'),
    child: const Text('Cancel'),
    ),
    TextButton(
    onPressed: () => Navigator.pop(context, 'OK'),
    child: const Text('OK'),
    ),
    ],
    ),
            ),
          ),


          ListTile(
            title: Text('Need help?',
              style: TextStyle(fontSize: 25,

              ),
            ),

          ),
          ListTile(
            title: const Text('Ask us on whatsapp'),
            onTap: () {
              socialmedia.whatsapp();
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Request callback'),
            onTap: () {
              socialmedia.phn();
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ), ListTile(
            title: const Text('FAQS'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ), ListTile(
            title: const Text('Mail us'),
            onTap: () {
              socialmedia.mail();
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),

          Row(
              children: [
                IconButton(onPressed: () {socialmedia.whatsapp();}, icon: Icon(Icons.facebook),
                ),
                IconButton(onPressed: () {socialmedia.facebook();}, icon: Icon(Icons.facebook),
                ),
                IconButton(onPressed: () {socialmedia.mail();}, icon: Icon(Icons.email),
                ),
                IconButton(onPressed: () {socialmedia.phn();}, icon: Icon(Icons.phone),
                ),
                IconButton(onPressed: () {socialmedia.ins();}, icon: Icon(Icons.apple),
                ),


              ]
          ),


        ],
      ),
    );
  }
}

class add extends StatelessWidget {
  final String img;
  const add({Key? key,required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset("assets/images/"+ img,
        height: 270,
          width: 390,
          fit: BoxFit.fill,
        ),




      ),
    );
  }
}
