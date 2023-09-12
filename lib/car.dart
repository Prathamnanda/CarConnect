import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class car extends StatelessWidget {
  const car({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("hi"),
      ),
      body:

          // Center is a layout widget. It takes a single child and positions it


              Container(
              color: Colors.white,
              height: 1000,
    child:
      ListView(
          scrollDirection: Axis.vertical,
          children:[
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 20,right:10),
              child: Container(
                width: 200,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(5)),
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

              height: 370,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(20.0),
                children: [


                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/car11.jpg',
                        width: 380,
                        height: 190,
                        fit: BoxFit.fill,

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/images/car2.jpg',
                          width: 380,
                          height: 10,
                          fit: BoxFit.fill,

                        ),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/car3.jpg',
                        width: 380,
                        height: 190,
                        fit: BoxFit.fill,

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/car4.jpg',
                        width: 380,
                        height: 190,
                        fit: BoxFit.fill,

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/car5.jpg',
                        width: 380,
                        height: 190,
                        fit: BoxFit.fill,

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/car11.jpg',
                        width: 380,
                        height: 190,
                        fit: BoxFit.fill,

                      ),
                    ),
                  ),
                ],

              ),
            ),

            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 30,top: 30),
                child: Text("Trending searches",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
              ),
            ),

            Container(

              height: 270,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(20.0),
                children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/trending.jpg',
                        width: 320,
                        height: 160,
                        fit: BoxFit.fill,

                      ),
                    ),
                ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/trending2.jpg',
                        width: 320,
                        height: 160,
                        fit: BoxFit.fill,

                      ),
                    ),
                  ),
                ],

              ),
            ),
            Image.asset('assets/images/sellsteps.png',
              width: 410,
              height: 600,
              fit: BoxFit.fill,

            ),
            Image.asset('assets/images/buy2.jpg',
              width: 410,
              height: 600,
              fit: BoxFit.fill,

            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 30,top: 30),
                child: Text("Need help?",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 40,top: 20),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Or drop us a mail at',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: ' Prathamnanda2003@gmail.com',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ]),
              ),
            ),



          ]
      ),







        ),




    );
  }
}

class cartemplate extends StatelessWidget {
  final String carname;
  final String vxicng;
  final String km;
  final String owner;
  final String fuel;
  final String location;
  final String emi;
  final String price;
  const cartemplate({Key? key,required this.carname, required this.vxicng,required this.km, required this.owner,required this.fuel,required this.location,required this.emi,required this.price});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
    width: 380,
    child:Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        //set border radius more than 50% of height and width to make circle
      ),
      child:Column(
        children:[

        Padding(
          padding: const EdgeInsets.only(),
          child: Container(
            width: 850,
            child: ClipRRect(

              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
              child: Image.asset('assets/images/rentcar.jpeg',
                cacheWidth: 800,
                cacheHeight: 180,
                fit: BoxFit.cover,

              ),
            ),
          ),
        ),
            Padding(
              padding: const EdgeInsets.only(top: 20,right: 150),
          child:Text(carname,
            style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.black87,
              fontSize: 18,

            ),
          ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 10,right: 205),
            child:Text(vxicng,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15,

              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 10),
              child:Card(
                child:Container(
                  color: Colors.grey,
                  height: 30,
                  width: 70,
                  child:Align(
                    alignment: Alignment.center,
                  child:Text(km,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10,

                    ),
                  ),
                  ),
                ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 10),
                child:Card(
                  child:Container(
                    color: Colors.grey,
                    height: 30,
                    width: 70,
                    child:Align(
                      alignment: Alignment.center,
                      child:Text(owner,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 10,

                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 10),
                child:Card(
                  child:Container(
                    color: Colors.grey,
                    height: 30,
                    width: 70,
                    child:Align(
                      alignment: Alignment.center,
                      child:Text(fuel,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 10,

                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 10),
                child:Card(
                  child:Container(
                    color: Colors.grey,
                    height: 30,
                    width: 70,
                    child:Align(
                      alignment: Alignment.center,
                      child:Text(location,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 10,

                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children:[
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 10),
            child:Text(emi,
              style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 18,
              ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 140),
                child:Text(price,
                  style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 18,
                  ),
                ),
              ),
          ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,right: 245),
            child:Text("Zero Down Payment",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 10,

              ),
            ),
          ),

            ],

      ),
    ),
    );
  }
}