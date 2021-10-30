import 'dart:async';
import 'package:cyber_teens/constants.dart';
import 'package:cyber_teens/screens/splash/splash_second.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerScreen extends StatefulWidget {
  @override
  _OtpVerScreen createState() => _OtpVerScreen();
}

class _OtpVerScreen extends State<OtpVerScreen> {
  TextEditingController textEditingController = TextEditingController();

  bool hasError = false;
  String currentText = "";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> scaffoldKey1 = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> scaffoldKey2 = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      key: scaffoldKey,
      body: GestureDetector(
        onTap: () {},
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: const Text('Verification',
                    style: TextStyle(fontSize: 22, color: Colors.black)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: const Text(
                    'Verify the handphone number by entering the \nverification code',
                    style: TextStyle(fontSize: 14, color: Colors.black54)),
              ),
              SizedBox(
                height: 70,
              ),
              Form(
                key: formKey,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0.0, horizontal: 30),
                    child: PinCodeTextField(
                      appContext: context,

                      pastedTextStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22.0,
                      ),
                      length: 6,
                      obscureText: false,
                      hintCharacter: "",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0,
                      ),
                      errorTextSpace: 25.0,

                      validator: (v) {
                        if (v!.length < 3) {
                          return "Please Fill all field";
                        } else {
                          return null;
                        }
                      },
                      cursorColor: Colors.black,
                      animationDuration: Duration(milliseconds: 300),
                      textStyle: TextStyle(fontSize: 16),

                      controller: textEditingController,
                      keyboardType: TextInputType.number,

                      onCompleted: (v) {},
                      // onTap: () {
                      //   print("Pressed");
                      // },
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          currentText = value;
                        });
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  hasError ? "*Please fill up all the cells properly" : "",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: const Text('Didn’t receive verification code?',
                    style: TextStyle(fontSize: 16, color: Colors.black54)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: const Text('Resend Code',
                    style: TextStyle(fontSize: 16, color: defaultColor)),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: defaultColor,
        onPressed: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (c) => OtpVerScreen()));
        },
        child: Icon(Icons.keyboard_arrow_right, color: Colors.white),
      ),
    );
  }
}
