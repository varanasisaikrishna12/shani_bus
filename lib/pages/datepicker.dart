import 'package:flutter/material.dart';

class DatePickerWidget extends StatefulWidget {
  @override
  _DatePickerWidgetState createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime date=DateTime.now();
<<<<<<< HEAD
=======
  var textController = TextEditingController();

>>>>>>> 7b95c1e (Initial commit)


  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return TextFormField(
      initialValue: '${date.month}/${date.day}/${date.year}' ,
=======
    textController.text='${date.month}/${date.day}/${date.year}';

    return TextFormField(
      controller: textController,

>>>>>>> 7b95c1e (Initial commit)
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
<<<<<<< HEAD
    final initialDate = date;
=======
    final initialDate = DateTime.now();
>>>>>>> 7b95c1e (Initial commit)
    final newDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (newDate == null) return date;

<<<<<<< HEAD
    setState(() => date = newDate);
=======
    setState(() {
      date = newDate;
      textController.text = '${date.month}/${date.day}/${date.year}';
   });
>>>>>>> 7b95c1e (Initial commit)
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




