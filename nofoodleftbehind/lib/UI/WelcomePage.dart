import 'package:flutter/material.dart';
import 'dart:async';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  void initState() {
    super.initState();
    countDown();
  }

  void countDown(){
    var _duration = new Duration(seconds: 2);
    new Future.delayed(_duration, gohome);
  }

  void gohome(){
    Navigator.of(context).pushReplacementNamed('/HomePage');
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: Image.asset('images/welcomepage.jpg',fit: BoxFit.cover,));
  }
}

