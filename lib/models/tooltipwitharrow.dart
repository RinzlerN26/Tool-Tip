import 'package:flutter/material.dart';
import 'package:tooltip/models/arrowpainter.dart';

class ToolTipWithArrow extends StatelessWidget {
  final String message;


  const ToolTipWithArrow({super.key,required this.message});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      preferBelow: false,
      padding: EdgeInsets.zero,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: CustomPaint(
              painter: ArrowPainter(),
            ),
          ),
        ],
      ),
    );
  }
}
