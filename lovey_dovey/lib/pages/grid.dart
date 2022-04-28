import 'package:flutter/material.dart';
import 'package:lovey_dovey/utils/gridPainter.dart';

class GridPage extends StatelessWidget {
  const GridPage({Key? key}): super(key: key);
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GestureDetector(
        onTapDown: (detail){
          print("onTapDown: (${detail.localPosition})");
        },
        onTapUp: (detail){
          print("onTapUp(${detail.localPosition})");
        },
        onHorizontalDragUpdate: (detail){
          print("onHorizontalDragUpdate: (${detail.localPosition})");
        },
        child: CustomPaint(
          child: Container(),
          painter: GridPainter(),
        ),
      )
    );
  }
}