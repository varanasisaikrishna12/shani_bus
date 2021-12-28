import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shani_bus/pages/busseats2.dart';
import 'package:shani_bus/pages/designs.dart';
import 'package:shani_bus/pages/busseats.dart';

class busbook extends StatefulWidget {
  int a = 0;
  late String b;

  busbook(int c, String d, {Key? key}) : super(key: key) {
    a = c;
    b = d;
  }

  @override
  _busbookState createState() => _busbookState(a, b);
}

class _busbookState extends State<busbook> {
  int a = 0;
  late String b;

  _busbookState(int c, String d) {
    a = c;
    b = d;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              color: Color.fromRGBO(255, 205, 5, 1),
              child: Stack(
                children: [
                  Positioned(
                    left: 15,
                    top: 24,
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
                        Text('Bharat Benz A/C $b (2+2)',
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
            (a == 1)
                ? Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.fromLTRB(0, 80, 0, 0),
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Busseats())
                : Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.fromLTRB(0, 80, 0, 0),
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Busseats2()),
            Container(
              height: 70,
            )
          ],
        ),
      ),
    );
  }
}
