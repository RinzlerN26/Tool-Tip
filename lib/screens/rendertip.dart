import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tooltip/screens/buttons.dart'; 

 class RenderTip extends StatefulWidget {
  const RenderTip({super.key});

  @override
  State <RenderTip> createState() =>  RenderTipState();
}

class  RenderTipState extends State<RenderTip> {
  

  String te='Button1';
  String tt='tool tip text here';
  double ts=13.0;
  double p=3;
  String tc='';
  String bc='';
  double cr=3;
  double tw=3;
  double aw=3;
  double ah=3;
  final _formKey = GlobalKey<FormState>();
  final colorr = const Color(0xFF0958D9);
  String _selectedValue='Button1';
  List<String> listOfValue = ["Button1",
    "Button2",
    "Button3",
    "Button4",
    "Button5"];
  final List<String>categories = [
    "Button1",
    "Button2",
    "Button3",
    "Button4",
    "Button5"
  ].toList();
  void _save(){
     if (_formKey.currentState!.validate()) {
       _formKey.currentState!.save();
            Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => Button(te:te,tt:tt,bc:bc, p:p, cr:cr, ts:ts, tw:tw, tc:tc,aw:aw,ah:ah),
    ));
     }
  }

  @override
  Widget build(BuildContext context) {
  
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                 margin: const EdgeInsets.only(left: 16),
                child: Text('Target Text',
                  style: GoogleFonts.barlow(
                    fontWeight: FontWeight.w500,
                    fontSize:16
                    ),
                ),
              ),
              Container(
                
                 decoration: BoxDecoration(
                 border: Border.all(color: Colors.white)
                 ), 
                margin: const EdgeInsets.only(left: 16),
                child:SizedBox(
                width: 234.66,
                height: 32,
                child:DropdownButtonFormField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(7,0,0,0),
    enabledBorder: OutlineInputBorder( //<-- SEE HERE
       borderRadius: BorderRadius.circular(0),
      borderSide:const BorderSide(color: Colors.black, width: 1),
    ), 
          )  ,    
        value: _selectedValue,
        isExpanded: true,
        onChanged: (value) {
                 setState(() {
                    _selectedValue = value!;
                    te=value;
                 });
               },
        onSaved: (value) {
                 setState(() {
                    _selectedValue = value!;
                    te=value;
                 });
               },
        items: listOfValue
           .map((String val) {
                return DropdownMenuItem(
                   value: val,
                   child: Text(
                        val,  
                        style: GoogleFonts.barlow(
                    fontWeight: FontWeight.w500,
                    fontSize:16
                    ),                 
                         ),
                       );
                    }).toList(),
                 )
              ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16),
                child: Text('Tooltip Text',
                  style: GoogleFonts.barlow(
                    fontWeight: FontWeight.w500,
                    fontSize:16
                    ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16),
                child: SizedBox(
                  width: 234.66,
                  height: 32,
                  child: TextFormField(
                    
                    style: GoogleFonts.barlow(
                      fontWeight: FontWeight.w500,
                      fontSize:16
                      ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      tt=value!;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                            borderSide: const BorderSide(),
                          ),
                    ),
                
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                    title:Text('Text Size',
                    style: GoogleFonts.barlow(
                      fontWeight: FontWeight.w500,
                      fontSize:16
                      ),
                  ), 
                    subtitle:SizedBox(
                    width: 234.66,
                    height: 32,
                    child: TextFormField(
                      
                      style: GoogleFonts.barlow(
                        fontWeight: FontWeight.w500,
                        fontSize:16
                        ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      initialValue:'3',
                       onSaved: (value) {
                      ts=double.parse(value!);
                    },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: const BorderSide(),
                            ),
                      ),
                  
                    ),
                  ),
                  )),
                   const SizedBox(
                      width: 5,
                    ),
             Expanded(
                  child: ListTile(
                    title:Text('Padding',
                    style: GoogleFonts.barlow(
                      fontWeight: FontWeight.w500,
                      fontSize:16
                      ),
                  ) ,
                    subtitle:SizedBox(
                    width: 234.66,
                    height: 32,
                    child: TextFormField(
                      
                      style: GoogleFonts.barlow(
                        fontWeight: FontWeight.w500,
                        fontSize:16
                        ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                        initialValue:'3',
                       onSaved: (value) {
                      p=double.parse(value!);
                    },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: const BorderSide(),
                            ),
                      ),
                  
                    ),
                  ),
                  )
             ),
                ],
              ),
               
              Container(
                margin: const EdgeInsets.only(left: 16),
                child: Text('Text Color',
                  style: GoogleFonts.barlow(
                    fontWeight: FontWeight.w500,
                    fontSize:16
                    ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16),
                child: SizedBox(
                  width: 234.66,
                  height: 32,
                  child: TextFormField(
                    initialValue: '0xFFFFFFFF',
                    style: GoogleFonts.barlow(
                      fontWeight: FontWeight.w500,
                      fontSize:16
                      ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                     onSaved: (value) {
                      tc=value!;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                            borderSide: const BorderSide(),
                          ),
                    ),
                
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text('Background Color',
                  style: GoogleFonts.barlow(
                    fontWeight: FontWeight.w500,
                    fontSize:16
                    ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16),
                child: SizedBox(
                  width: 234.66,
                  height: 32,
                  child: TextFormField(
                     initialValue: '0xFF000000',
                    style: GoogleFonts.barlow(
                      fontWeight: FontWeight.w500,
                      fontSize:16
                      ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      bc=value!;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                            borderSide: const BorderSide(),
                          ),
                    ),
                
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                    title:Text('Corner Radius',
                    style: GoogleFonts.barlow(
                      fontWeight: FontWeight.w500,
                      fontSize:16
                      ),
                  ), 
                    subtitle:SizedBox(
                    width: 234.66,
                    height: 32,
                    child: TextFormField(
                      
                      style: GoogleFonts.barlow(
                        fontWeight: FontWeight.w500,
                        fontSize:16
                        ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      initialValue:'3',
                      onSaved: (value) {
                      cr=double.parse(value!);
                    },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: const BorderSide(),
                            ),
                      ),
                  
                    ),
                  ),
                  )),
                   const SizedBox(
                      width: 5,
                    ),
             Expanded(
                  child: ListTile(
                    title:Text('Tooltip Width',
                    style: GoogleFonts.barlow(
                      fontWeight: FontWeight.w500,
                      fontSize:16
                      ),
                  ) ,
                    subtitle:SizedBox(
                    width: 234.66,
                    height: 32,
                    child: TextFormField(
                      
                      style: GoogleFonts.barlow(
                        fontWeight: FontWeight.w500,
                        fontSize:16
                        ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onSaved: (value) {
                      tw=double.parse(value!);
                    },
                      initialValue:'3',
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: const BorderSide(),
                            ),
                      ),
                  
                    ),
                  ),
                  )
             ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ListTile(
                    title:Text('Arrow Width',
                    style: GoogleFonts.barlow(
                      fontWeight: FontWeight.w500,
                      fontSize:16
                      ),
                  ), 
                    subtitle:SizedBox(
                    width: 234.66,
                    height: 32,
                    child: TextFormField(
                      
                      style: GoogleFonts.barlow(
                        fontWeight: FontWeight.w500,
                        fontSize:16
                        ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      onSaved: (value) {
                      aw=double.parse(value!);
                    },
                      initialValue:'3',
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: const BorderSide(),
                            ),
                      ),
                  
                    ),
                  ),
                  )),
                   const SizedBox(
                      width: 5,
                    ),
             Expanded(
                  child: ListTile(
                    title:Text('Arrow Height',
                    style: GoogleFonts.barlow(
                      fontWeight: FontWeight.w500,
                      fontSize:16
                      ),
                  ) ,
                    subtitle:SizedBox(
                    width: 234.66,
                    height: 32,
                    child: TextFormField(
                      
                      style: GoogleFonts.barlow(
                        fontWeight: FontWeight.w500,
                        fontSize:16
                        ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                        initialValue:'3',
                       onSaved: (value) {
                      ah=double.parse(value!);
                    },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: const BorderSide(),
                            ),
                      ),
                  
                    ),
                  ),
                  )
             ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Center(
                  child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style:ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(colorr),         
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                       RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side:BorderSide(color: colorr)
                      )
                      )
                    ),
                        onPressed: () {
                         
                          // if (_formKey.currentState!.validate()) {
                            
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     const SnackBar(content: Text('Processing Data')),
                          //   );
                          _save();
                          }
                        ,
                        child:Text('Render ToolTip',
                        style: GoogleFonts.barlow(
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}