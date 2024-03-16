import 'dart:async';
import 'New.dart';
import 'Home_p.dart';
import 'main.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),() {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder:(context) => MynewPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: FaIcon(FontAwesomeIcons.amazonPay,
        size: 100,
        color: Colors.black,),
      ),
    );
  }
}
