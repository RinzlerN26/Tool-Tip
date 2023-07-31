import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:tooltip/models/TooltipWithArrow.dart';

class Button extends StatelessWidget {
  final String te;
  final double ts;
  final double p;
  final String tc;
  final String bc;
  final double tw;
  final double cr;
  final String tt;
  final double aw;
  final double ah;
 
  const Button({super.key,required this.te,
 required this.tt,
  required this.ts,
  required this.p,
  required this.tc,
  required this.bc,
  required this.cr,
  required this.tw,
  required this.aw,
  required this.ah,
  });

  @override
  Widget build(BuildContext context) {
    // const Color tcc=Color(0xFFFFFFFF);
    // const Color bcc=Color(0xFF000000);
    // final Color tcc=Color(int.parse(tc));
    //  final Color bcc=Color(int.parse(bc));
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body:Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ElevatedButton(
                    style:ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),         
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                         const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        )
                        )
                      ),
                    onPressed: (){},
                    child:te=='Button1'?
                    ToolTipWithArrow(
                       te: te,
                       message: tt,
                       arrowWidth:aw,
                       arrowHeight:ah,
                       tooltipWidth:tw,
                       p: p,
                       tc: tc,
                       bc: bc,
                       cr: cr,
                       ts: ts,
                     )
                    // Tooltip(
                    //   waitDuration:const Duration(seconds: 1),
                    //   showDuration: const Duration(seconds: 5),
                    //   padding: EdgeInsets.all(p),
                    //   height: 45,
                    //   textStyle: TextStyle(  
                    //     fontSize: ts, color: tcc, fontWeight: FontWeight.normal),
                    //   decoration: BoxDecoration(  
                    //     borderRadius: BorderRadius.circular(cr), color:bcc),
                    //   message:tt,
                    //   child: Text('Button1',
                    //           style: GoogleFonts.barlow(
                    //           ),
                    //           ),
                      
                    // )
                    :const Text(''),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                    style:ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),         
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                         const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        )
                        )
                      ),
                    onPressed: (){},
                    child:
                    te=='Button2'? 
                    // Tooltip(
                    //   waitDuration:const Duration(seconds: 1),
                    //   showDuration: const Duration(seconds: 5),
                    //   padding: EdgeInsets.all(p),
                    //   height: 35,
                    //   textStyle: TextStyle(  
                    //     fontSize: ts, color: tcc, fontWeight: FontWeight.normal),
                    //   decoration: BoxDecoration(  
                    //     borderRadius: BorderRadius.circular(cr), color: bcc),
                    //   message: tt,
                    //   child: Text('Button2',
                    //           style: GoogleFonts.barlow(
                    //           ),
                    //           ),
                    // )
                    ToolTipWithArrow(
                      te: te,
                       message: tt,
                       arrowWidth:aw,
                       arrowHeight:ah,
                       tooltipWidth:tw,
                       p: p,
                       tc: tc,
                       bc: bc,
                       cr: cr,
                       ts: ts,
                     )
                    :const Text(''),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
                 child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style:ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),         
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                       const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      )
                      )
                    ),
                    onPressed: (){},
                    child:te=='Button3'?
                    // Tooltip(
                    //   waitDuration:const Duration(seconds: 1),
                    //   showDuration: const Duration(seconds: 5),
                    //   padding: EdgeInsets.all(p),
                    //   height: 35,
                    //   textStyle: TextStyle(  
                    //     fontSize: ts, color:tcc, fontWeight: FontWeight.normal),
                    //   decoration: BoxDecoration(  
                    //     borderRadius: BorderRadius.circular(cr), color:bcc),
                    //   message: tt,
                    //   child: Text('Button3',
                    //           style: GoogleFonts.barlow(
                    //           ),
                    //           ),
                    // )
                    ToolTipWithArrow(
                      te: te,
                       message: tt,
                       arrowWidth:aw,
                       arrowHeight:ah,
                       tooltipWidth:tw,
                       p: p,
                       tc: tc,
                       bc: bc,
                       cr: cr,
                       ts: ts,
                     )
                    :const Text(''),
                  ),
                             ),
               ),
          Row(
            children: [
              Expanded(
                     child: Align(
                      alignment: Alignment.bottomLeft,
                      child: ElevatedButton(
                        style:ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),         
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                           const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          )
                          )
                        ),
                        onPressed: (){},
                        child:te=='Button4'?
                        // Tooltip(
                        //   waitDuration:const Duration(seconds: 1),
                        //   showDuration: const Duration(seconds: 5),
                        //   padding: EdgeInsets.all(p),
                        //   height: 35,
                        //   textStyle: TextStyle(  
                        // fontSize: ts, color: tcc, fontWeight: FontWeight.normal),
                        //   decoration: BoxDecoration(  
                        // borderRadius: BorderRadius.circular(cr), color: bcc),
                        //   message:tt,
                        //   child: Text('Button4',
                        //           style: GoogleFonts.barlow(
                        //           ),
                        //           ),
                        // )
                        ToolTipWithArrow(
                          te: te,
                       message: tt,
                       arrowWidth:aw,
                       arrowHeight:ah,
                       tooltipWidth:tw,
                       p: p,
                       tc: tc,
                       bc: bc,
                       cr: cr,
                       ts: ts,
                     )
                        :const Text(''),
                      ),
                                 ),
                   ),     
              Expanded(
                     child: Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                        style:ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),         
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                           const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          )
                          )
                        ),
                        onPressed: (){},
                        child:te=='Button5'?
                        // Tooltip(
                        //   waitDuration:const Duration(seconds: 1),
                        //   showDuration: const Duration(seconds: 5),
                        //   padding: EdgeInsets.all(p),
                        //   height: 35,
                        //   textStyle: TextStyle(  
                        // fontSize: ts, color: tcc, fontWeight: FontWeight.normal),
                        //   decoration: BoxDecoration(  
                        // borderRadius: BorderRadius.circular(cr), color:bcc),
                        //   message:tt,
                        //   child: Text('Button5',
                        //           style: GoogleFonts.barlow(
                        //           ),
                        //           ),
                        // )
                        ToolTipWithArrow(
                          te: te,
                       message: tt,
                       arrowWidth:aw,
                       arrowHeight:ah,
                       tooltipWidth:tw,
                       p: p,
                       tc: tc,
                       bc: bc,
                       cr: cr,
                       ts: ts,
                     )
                        :const Text(''),
                      ),
                                 ),
                   ),
            ],
          ),
        ],
      )
    );
  }
}