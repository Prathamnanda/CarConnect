import 'package:flutter/material.dart';
class sell extends StatelessWidget {

  const sell({super.key});







  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
          child: Stack(
            children:[
            Container(
            color: Colors.white,



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
            child: ListView(
                children:[
                  Container(
                    color: Colors.grey,
                    child: Image.asset('assets/images/sellmain.jpg',
                      width: double.infinity,
                      height: 280,
                      fit: BoxFit.fill,

                    ),
                  ),


                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(50)
                      ),
                    ),
                    child: Padding(
           padding: const EdgeInsets.only(right: 50,bottom: 20,top: 20,left: 10),
           child: Text("Enter your car registration no.",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
           ),
         ),
                  ),

                  Container(
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: TextField(

                        keyboardType: TextInputType.number,

                        decoration: InputDecoration(
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.white,
                          hintText:"EG.DL03FG4113",
                          hintStyle: TextStyle(color: Colors.deepPurple),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),

                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 10),
                    child: Container(
                      width: 400,
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue, // background
                            onPrimary: Colors.white, // foreground

                            shape: RoundedRectangleBorder( //to set border radius to button
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          onPressed: () {},
                          child: Text('submit',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 20),
                    child: Image.asset('assets/images/whycars.jpg',
                      width: 410,
                      height: 480,
                      fit: BoxFit.fill,

                    ),
                  ),
                  Image.asset('assets/images/sellsteps.png',
                    width: 410,
                    height: 600,
                    fit: BoxFit.fill,

                  ),
                  Image.asset('assets/images/rating.jpg',
                    width: 410,
                    height: 160,
                    fit: BoxFit.fill,

                  ),
                  Container(
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,bottom: 20,top: 30),
                      child: Text("What our customers say",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey.shade200,
                    height: 450,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children:[
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('assets/images/r1.jpg',
                              width: 320,
                              height: 180,
                              fit: BoxFit.fill,

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('assets/images/r2.jpg',
                              width: 320,
                              height: 180,
                              fit: BoxFit.fill,

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('assets/images/r3.jpg',
                              width: 320,
                              height: 180,
                              fit: BoxFit.fill,

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('assets/images/r4.jpg',
                              width: 320,
                              height: 180,
                              fit: BoxFit.fill,

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('assets/images/r5.jpg',
                              width: 320,
                              height: 180,
                              fit: BoxFit.fill,

                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('assets/images/r6.jpg',
                              width: 320,
                              height: 180,
                              fit: BoxFit.fill,

                            ),
                          ),
                        ),
                      ]


                    ),
                  ),
                  Container(
                    color: Colors.grey.shade200,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,bottom: 20,top: 30),
                      child: Text("Our family on social media",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey.shade200,
                    height: 430,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children:[
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/s1.jpg',
                                width: 380,
                                height: 140,
                                fit: BoxFit.fill,

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/s2.jpg',
                                width: 380,
                                height: 140,
                                fit: BoxFit.fill,

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/s3.jpg',
                                width: 380,
                                height: 140,
                                fit: BoxFit.fill,

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/s4.jpg',
                                width: 380,
                                height: 140,
                                fit: BoxFit.fill,

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/s5.jpg',
                                width: 380,
                                height: 140,
                                fit: BoxFit.fill,

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/s6.jpg',
                                width: 380,
                                height: 140,
                                fit: BoxFit.fill,

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/s7.jpg',
                                width: 380,
                                height: 140,
                                fit: BoxFit.fill,

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/s8.jpg',
                                width: 380,
                                height: 140,
                                fit: BoxFit.fill,

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/s9.jpg',
                                width: 380,
                                height: 140,
                                fit: BoxFit.fill,

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset('assets/images/s10.jpg',
                                width: 380,
                                height: 140,
                                fit: BoxFit.fill,

                              ),
                            ),
                          ),
                        ]


                    ),
                  ),

      ],
    ),




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


          ),
        ],

    ),






        ),
    );
  }
}
