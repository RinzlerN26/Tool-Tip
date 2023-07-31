import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tooltip/models/arrowpainter.dart';

class ToolTipWithArrow extends StatelessWidget {
  final String te;
  final String message;
  final double arrowWidth;
  final double arrowHeight;
  final double tooltipWidth;
  final double p;
  final String tc;
  final String bc;
  final double cr;
  final double ts;

   const ToolTipWithArrow({super.key,
   required this.te,
   required this.message,
   required this.arrowWidth,
    required this.arrowHeight,
    required this.tooltipWidth,
    required this.p,
   required this.tc,
  required this.bc,
  required this.cr,
  required this.ts,
   });

  @override
  Widget build(BuildContext context) {
    final Color tcc=Color(int.parse(tc));
     final Color bcc=Color(int.parse(bc));
    return Tooltip(
      waitDuration:const Duration(seconds: 1),
      showDuration: const Duration(seconds: 5),
      message: message,
      preferBelow: false,
      padding: EdgeInsets.all(p),
      textStyle: TextStyle(  
                        fontSize: ts, color: tcc, fontWeight: FontWeight.normal),
       decoration: BoxDecoration(  
                    borderRadius: BorderRadius.circular(cr), color:bcc),                  
      child: Stack(
        children: [
          Positioned(
            top: -arrowHeight,
            left: 0,
            child: CustomPaint(
              size: Size(arrowWidth, arrowHeight),
              painter: ArrowPainter(),
            ),
          ),
          Text(te,
                               style: GoogleFonts.barlow(
                             ),
            ),
        ],
      ),
    );
  }
}
