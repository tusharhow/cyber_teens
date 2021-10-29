import 'dart:async';
import 'package:animation_wrappers/Animations/faded_slide_animation.dart';
import 'package:cyber_teens/constants.dart';
import 'package:flutter/material.dart';
import 'screens/splash/splash_second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cyber Teens',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: defaultColor,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (c) => const SplashSecond()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadedSlideAnimation(
        const Center(
          child: Image(
            image: AssetImage('assets/logos/logo.png'),
            height: 200,
            color: Colors.white,
            width: 200,
          ),
        ),
        beginOffset: const Offset(0.0, 5.0),
        endOffset: const Offset(0.0, 0.0),
      ),
    );
  }
}
