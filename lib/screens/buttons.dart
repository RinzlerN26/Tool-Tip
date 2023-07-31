import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String te;
  final double ts;
  final double p;
  final String tc;
  final String bc;
  final int tw;
  final double cr;
  final String tt;
 
  const Button({super.key,required this.te,
 required this.tt,
  required this.ts,
  required this.p,
  required this.tc,
  required this.bc,
  required this.cr,
  required this.tw,
  });

  @override
  Widget build(BuildContext context) {
    // const Color tcc=Color(0xffffffff);
    // const Color bcc=Color(0xFF000000);
    final Color tcc=Color(int.parse(tc));
     final Color bcc=Color(int.parse(bc));
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
                    child:te=='Button1'?Tooltip(
                      waitDuration:const Duration(seconds: 1),
                      showDuration: const Duration(seconds: 5),
                      padding: EdgeInsets.all(p),
                      height: 45,
                      textStyle: TextStyle(  
                        fontSize: ts, color: tcc, fontWeight: FontWeight.normal),
                      decoration: BoxDecoration(  
                        borderRadius: BorderRadius.circular(cr), color:Colors.black),
                      message:tt,
                      child: Text('Button1',
                              style: GoogleFonts.barlow(
                              ),
                              ),
                      
                    ):const Text(''),
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
                    Tooltip(
                      waitDuration:const Duration(seconds: 1),
                      showDuration: const Duration(seconds: 5),
                      padding: EdgeInsets.all(p),
                      height: 35,
                      textStyle: TextStyle(  
                        fontSize: ts, color: tcc, fontWeight: FontWeight.normal),
                      decoration: BoxDecoration(  
                        borderRadius: BorderRadius.circular(cr), color: bcc),
                      message: tt,
                      child: Text('Button2',
                              style: GoogleFonts.barlow(
                              ),
                              ),
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
                    child:te=='Button3'?Tooltip(
                      waitDuration:const Duration(seconds: 1),
                      showDuration: const Duration(seconds: 5),
                      padding: EdgeInsets.all(p),
                      height: 35,
                      textStyle: TextStyle(  
                        fontSize: ts, color:tcc, fontWeight: FontWeight.normal),
                      decoration: BoxDecoration(  
                        borderRadius: BorderRadius.circular(cr), color:bcc),
                      message: tt,
                      child: Text('Button3',
                              style: GoogleFonts.barlow(
                              ),
                              ),
                    ):const Text(''),
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
                        child:te=='Button4'?Tooltip(
                          waitDuration:const Duration(seconds: 1),
                          showDuration: const Duration(seconds: 5),
                          padding: EdgeInsets.all(p),
                          height: 35,
                          textStyle: TextStyle(  
                        fontSize: ts, color: tcc, fontWeight: FontWeight.normal),
                          decoration: BoxDecoration(  
                        borderRadius: BorderRadius.circular(cr), color: bcc),
                          message:tt,
                          child: Text('Button4',
                                  style: GoogleFonts.barlow(
                                  ),
                                  ),
                        ):const Text(''),
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
                        child:te=='Button5'?Tooltip(
                          waitDuration:const Duration(seconds: 1),
                          showDuration: const Duration(seconds: 5),
                          padding: EdgeInsets.all(p),
                          height: 35,
                          textStyle: TextStyle(  
                        fontSize: ts, color: tcc, fontWeight: FontWeight.normal),
                          decoration: BoxDecoration(  
                        borderRadius: BorderRadius.circular(cr), color:bcc),
                          message:tt,
                          child: Text('Button5',
                                  style: GoogleFonts.barlow(
                                  ),
                                  ),
                        ):const Text(''),
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