import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:signuplogin/home.dart';
import 'package:signuplogin/signup.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
class otp extends StatefulWidget {
  final String ph_num;
  final String var_id;
  const otp({required this.ph_num, required this.var_id});

  @override
  State<StatefulWidget> createState() =>otpauth();


}
class otpauth extends State<otp>{
  TextEditingController phoneController=TextEditingController();
  TextEditingController otpCodeController=TextEditingController();
  FirebaseAuth auth=FirebaseAuth.instance;
  var code;
  late String phn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("hi"),
      ),
      body: SingleChildScrollView(
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
            mainAxisAlignment: MainAxisAlignment.start
            ,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text("Verification code",
                style: TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 35,

                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text("Please enter OTP sent",
                style: TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15,

                ),
              ),Text("on your registered mobile number",
                style: TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15,

                ),
              ),
              SizedBox(
                height: 150,
              ),



              OtpTextField(

                numberOfFields: 6,

                showFieldAsBox: false,
                borderWidth: 4.0,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here if necessary
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  code=(verificationCode);

                },
              ),
              SizedBox(
                height: 100,
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Didnt receive OTP? ',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: 'Resend',
                    recognizer: TapGestureRecognizer()
                      ..onTap=() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const signup()),
                        );
                      },
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 30,
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,


                // background
                // foreground
                ),
                onPressed: () async {
                    PhoneAuthCredential credential=PhoneAuthProvider.credential(verificationId: widget.var_id, smsCode: code);
                    await auth.signInWithCredential(credential);
    Navigator.push(
    context,

    MaterialPageRoute(builder: (context) => const home()),
    );




  },

                child: Text('SUBMIT',
                  style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize:30,

                ),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
