import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  static const DEFAULT_SPLASH_VISIBILITY_TIME = 5;
  static const MAIN_SCREEN_NAME = "/MainPage";

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async =>
    Timer(Duration(seconds: DEFAULT_SPLASH_VISIBILITY_TIME), navigateToMainScreen);

  void navigateToMainScreen() {
    Navigator.pushNamed(context, MAIN_SCREEN_NAME);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Container(
      alignment: Alignment.center,
    );
  }
}
