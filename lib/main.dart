import 'package:flutter/material.dart';
import 'package:scan_app/homepage.dart';

void main() {
  runApp(
      MaterialApp(
        home: MyApp(),
      )
  );
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Homepage();
  }
}


