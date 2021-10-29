import 'dart:async';
import 'package:cyber_teens/screens/onboard.dart';
import 'package:flutter/material.dart';

class SplashSecond extends StatefulWidget {
  const SplashSecond({Key? key}) : super(key: key);

  @override
  State<SplashSecond> createState() => _SplashSecondState();
}

class _SplashSecondState extends State<SplashSecond> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (c) => const Onboard()), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 290,
          ),
          const Center(
            child: Image(
              image: AssetImage('assets/logos/logo.png'),
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 120,
          ),
          Expanded(
            flex: 12,
            child: Row(
              children: const [
                SizedBox(
                  width: 30,
                ),
                Image(
                  image: AssetImage('assets/images/vol3.png'),
                  width: 350,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
