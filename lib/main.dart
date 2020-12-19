import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(AwesomeApp());
}

class AwesomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
