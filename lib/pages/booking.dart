import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shani_bus/pages/designs.dart';
import 'package:shani_bus/pages/busseats.dart';

class busbook extends StatefulWidget {
  const busbook({Key? key}) : super(key: key);

  @override
  _busbookState createState() => _busbookState();
}

class _busbookState extends State<busbook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              color: Colors.yellow,
              child: Stack(
                children: [
                  Positioned(
                    left: 18,
                    top: 18,
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset('assets/images/Goback.png')),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Zinghbus',
                            style: design.texst(24, FontWeight.w700)),
                        Container(
                          height: 20,
                        ),
                        Text('Bharat Benz A/C Seater (2+2)',
                            style: design.texst((18), FontWeight.w400))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 7,
            ),
            Text('Choose seats based on fares',
                style: design.texst(18, FontWeight.w700)),
            Container(
              height: 7,
            ),

            Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.fromLTRB(0,80,0,0),
                width: MediaQuery.of(context).size.width/1.5,
                decoration: BoxDecoration(

                  border : Border.all(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Busseats()),
            Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.fromLTRB(0,80,0,0),
                width: MediaQuery.of(context).size.width/1.4,
                decoration: BoxDecoration(

                  border : Border.all(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Busseats())

          ],
        ),
      ),
    );
  }
}
