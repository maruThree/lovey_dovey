import 'package:flutter/material.dart';
import 'package:lovey_dovey/utils/backgroundPainter.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        child: Container(),
        painter: BackgroundPainter(),
      ),
    );
  }
}