import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
 class Historyview extends StatefulWidget{
   @override
   _HistoryviewState createState()=>_HistoryviewState();

 }

class _HistoryviewState  extends State<Historyview>{
   List<Object> hv=[];
  @override
  void didChangeDependencies(){
    super.didChangeDependencies();

  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("yo"),

      ),
      body: SafeArea(
        child:ListView.builder(
            itemCount:hv.length,
            itemBuilder: (context,index) {
              return Text("index");
            }
      ),
    ),

    );
  }
 /* Future getlist() async{
    final uid=AuthService().currentUser?.uid;
    var data = await FirebaseFirestore.instance
    .collection("app1-c8a74")
    .doc(uid)
    .collection("users")
    .orderBy('created',descending: true)
    .get();
    setState(() {
      hv=List.from(data.docs.map(doc)=> Question.fromSnapshot(doc)));
    });

  }*/
   
}