import 'package:flutter/material.dart';
import 'package:shani_bus/pages/designs.dart';
import 'package:shani_bus/pages/homepage.dart';

class otppage extends StatefulWidget {
  const otppage({Key? key}) : super(key: key);

  @override
  _otppageState createState() => _otppageState();
}

class _otppageState extends State<otppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: Column(
             children: [
               Container(
                 height: 80,
               ),
               Container(
                   width: 280,
                   height: 250,
                   decoration: BoxDecoration(
                     image : DecorationImage(
                         image: AssetImage('assets/images/Image3.png'),
                         fit: BoxFit.fitWidth
                     ),
                   )
               ),
               Container(
                 height: 30,
               ),
               InkWell(
                 onTap: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => homepage()),
                   );
                 },
                 child: Container(
                   width: 138,
                   height: 48,
                   decoration: design.boxdec(),
                   child:Center(

                       child: Text('Verify', textAlign: TextAlign.center, style: TextStyle(
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
    );
  }
}
