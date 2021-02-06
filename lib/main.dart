import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(new FlutterKykyryzaApp());


class FlutterKykyryzaApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Kykyryza flutter"
    );
  }
}