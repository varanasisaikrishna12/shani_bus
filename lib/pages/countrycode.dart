import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:shani_bus/pages/designs.dart';
class countcod extends StatefulWidget {
  const countcod({Key? key}) : super(key: key);

  @override
  _countcodState createState() => _countcodState();
}

class _countcodState extends State<countcod> {
  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(onInputChanged: (PhoneNumber number) {
      print(number.phoneNumber);
    },
      inputBorder: OutlineInputBorder(),
      inputDecoration:design.dec('Phone Number') ,
      keyboardType: TextInputType.phone,
    );
  }
}
