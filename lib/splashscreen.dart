// Figma Flutter Generator Androidsmall1Widget - FRAME
import 'package:flutter/material.dart';

class Splahscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 205, 5, 1),
        ),
        child:
        Center(
          child: Container(
              width: 394,
              height: 381,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/Yellowlightningiconbusinesslogo1.png'),
                    fit: BoxFit.fitWidth),
              )),
        )
        );
  }
}
