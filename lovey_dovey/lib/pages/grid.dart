import 'package:flutter/material.dart';
import 'package:lovey_dovey/utils/gridPainter.dart';

class GridPage extends StatelessWidget {
  const GridPage({Key? key}): super(key: key);
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: CustomPaint(
        child: Container(),
        painter: GridPainter(),
        ),
    );
  }
}