import 'package:flutter/material.dart';
import 'package:lovey_dovey/pages/empty.dart';
import 'package:lovey_dovey/pages/grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      home: GridPage(),
    );
  }
}
