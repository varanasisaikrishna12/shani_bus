import 'package:flutter/material.dart';

class DatePickerWidget extends StatefulWidget {
  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime date=DateTime.now();


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: '${date.month}/${date.day}/${date.year}' ,
      decoration: InputDecoration(

          prefixIcon: InkWell(
              onTap: (){
                pickDate(context);
              },
              child: contdc('assets/images/Timesheet.png')),
          hintText: 'Select Date'),
    );
  }

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (newDate == null) return date;

    setState(() => date = newDate);
  }
  Widget contdc(String img) {
    return Container(
        width: 30,
        height: 30,
        margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(img), fit: BoxFit.fitWidth),
        ));
  }
}




