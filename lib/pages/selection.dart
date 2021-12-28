import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:shani_bus/pages/designs.dart';
import 'package:shani_bus/pages/booking.dart';
import 'package:shani_bus/pages/map.dart';


class selection extends StatefulWidget {
  const selection({Key? key}) : super(key: key);

  @override
  _selectionState createState() => _selectionState();
}

class _selectionState extends State<selection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               InkWell(
                 onTap: (){
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => busbook(2 , "Sleeper")));
                 },

                 child: Container(
                   margin: EdgeInsets.all(20),
                   width: 138,
                   height: 48,
                   decoration: design.boxdec(),
                   child:Center(

                       child: Text('Seater', textAlign: TextAlign.center, style: TextStyle(
                         color: Color.fromRGBO(9, 9, 9, 1),
                         fontFamily: 'Inter',
                         fontSize: 18,
                         letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                         fontWeight: FontWeight.w700,

                       ),)
                   ),
                 ),
               ),



               InkWell(
                 onTap: (){
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => MapSample()));
                 },

                 child: Container(
                   margin: EdgeInsets.all(20),
                   width: 138,
                   height: 48,
                   decoration: design.boxdec(),
                   child:Center(

                       child: Text('Map', textAlign: TextAlign.center, style: TextStyle(
                         color: Color.fromRGBO(9, 9, 9, 1),
                         fontFamily: 'Inter',
                         fontSize: 18,
                         letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                         fontWeight: FontWeight.w700,

                       ),)
                   ),
                 ),
               ),


               InkWell(
                 borderRadius: BorderRadius.all(Radius.circular(2)),
                 onTap: (){
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => busbook(1 , "Seater")));
                 },

                 child: Container(
                   margin: EdgeInsets.all(20),
                   width: 138,
                   height: 48,
                   decoration: design.boxdec(),
                   child:Center(

                       child: Text('Seater', textAlign: TextAlign.center, style: TextStyle(
                         color: Color.fromRGBO(9, 9, 9, 1),
                         fontFamily: 'Inter',
                         fontSize: 18,
                         letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                         fontWeight: FontWeight.w700,

                       ),)
                   ),
                 ),
               ),
             ],
           ),

         )
        ],
      )




    );
  }
}


