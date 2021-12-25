import 'package:flutter/material.dart';
import 'package:shani_bus/pages/countrycode.dart';
import 'package:shani_bus/pages/designs.dart';
import 'package:shani_bus/pages/otp.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
       reverse: true,
        child: Column(
          children: [
            Container(
              height: 50,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Welcome back.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(13, 14, 15, 1),
                        fontFamily: 'Inter',
                        fontSize: 32,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w700,
                        height: 1.125),
                  ),
                  Container(
                    height: 20,
                  ),
                  Text(
                    'Log in to your account',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(13, 14, 15, 1),
                        fontFamily: 'Inter',
                        fontSize: 16,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w400,
                        height: 0),
                  ),
                ],
              ),
            ),
            Container(
              height: 37,
            ),
            Container(
                width: 251,
                height: 239,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Image2.png'),
                      fit: BoxFit.fitWidth),
                )),
            Container(
              height: 37,
            ),
            Padding(
              padding: EdgeInsets.all(8),
                child: countcod()),
            Container(
              height: 37,
            ),
            // Figma Flutter Generator ControlsbuttonsWidget - FRAME
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => otppage()),
                );
              },
              child: Container(
                  width: 138,
                  height: 48,
                  decoration: design.boxdec(),
                  child:Center(

                      child: Text('Login', textAlign: TextAlign.center, style: TextStyle(
                        color: Color.fromRGBO(9, 9, 9, 1),
                        fontFamily: 'Inter',
                        fontSize: 18,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.w700,

                      ),)
                  ),
              ),
            ),
            Container(
              height: 37,
            ),
          ],
        ),
      ),
    );
  }
}
