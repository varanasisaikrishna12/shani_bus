import 'package:flutter/material.dart';

class DatePickerWidget extends StatefulWidget {
  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime date = DateTime.now();

  var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    textController.text = '${date.month}/${date.day}/${date.year}';
    return TextFormField(


      controller: textController,
      decoration: InputDecoration(
          prefixIcon: InkWell(
              onTap: () {
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

    setState(() {
      date = newDate;
      textController.text = '${date.month}/${date.day}/${date.year}';
    });
  }

  Widget contdc(String img) {
    return Container(
        width: 30,
        height: 30,
        margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(img)),
        ));
  }
}
