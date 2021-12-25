import 'package:flutter/material.dart';

class design {
  static InputDecoration dec(String b) {
    InputDecoration c = InputDecoration(
        contentPadding: EdgeInsets.all(8),
        hoverColor: Colors.black12,
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(width: 0, style: BorderStyle.none)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(width: 0, style: BorderStyle.none)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(width: 0, style: BorderStyle.none)),
        fillColor: Color.fromRGBO(239, 239, 239, 1),
        filled: true,
        labelText: b,
        labelStyle: TextStyle(color: Colors.black));
    return c;
  }

  static BoxDecoration boxdec() {
    return BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(48),
        topRight: Radius.circular(48),
        bottomLeft: Radius.circular(48),
        bottomRight: Radius.circular(48),
      ),
      boxShadow: [
        BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, 4),
            blurRadius: 4)
      ],
      color: Color.fromRGBO(255, 205, 5, 1),
    );
  }

  static TextStyle texst(double a, FontWeight b){
    return TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontFamily: 'Inter',
        fontSize: a,

        fontWeight: b,

    );
  }
}
