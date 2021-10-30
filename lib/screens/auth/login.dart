import 'package:cyber_teens/constants.dart';
import 'package:cyber_teens/screens/auth/otp.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: const Text('What’s your number?',
                  style: TextStyle(fontSize: 22, color: Colors.black)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: const Text('we’ll text a code to verify your phone',
                  style: TextStyle(fontSize: 14, color: Colors.black54)),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: const Text('Phone Number',
                  style: TextStyle(fontSize: 16, color: Colors.black54)),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 55,
              child: TextFormField(
                style: const TextStyle(fontWeight: FontWeight.w500),
                // controller: _numberController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Number is required';
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white54,
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(color: Colors.black54),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image(image: AssetImage('assets/logos/bd.png')),
                    ),
                    prefixText: '+880 ',
                    prefixStyle: TextStyle(color: Colors.black54),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black54)),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: defaultColor,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (c) => OtpVerScreen()));
        },
        child: Icon(Icons.keyboard_arrow_right, color: Colors.white),
      ),
    );
  }
}
