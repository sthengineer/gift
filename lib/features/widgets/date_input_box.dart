import 'package:flutter/material.dart';
import 'package:gift/core/constants/palette.dart';
import 'package:gift/core/constants/responsive.dart';
import 'package:intl/intl.dart';

class DateInputBox extends StatefulWidget {
  const DateInputBox({Key? key}) : super(key: key);

  @override
  _DateInputBoxState createState() => _DateInputBoxState();
}

class _DateInputBoxState extends State<DateInputBox> {
  DateTime? selectedDate;
  final TextEditingController _dateController = TextEditingController();

  void _showMyDatePicker() async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
    );
    if (date != null) {
      setState(() {
        selectedDate = date;
        /*_dateController.text = selectedDate!.toIso8601String().split('T')[0];*/
        _dateController.text = DateFormat('MM/dd/yyyy').format(date);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFormField(
          readOnly: true,
          controller: _dateController,
          /*onTap: _showMyDatePicker,*/
          decoration: InputDecoration(
            labelText: 'Birth date',
            hintText: 'Select a date',
            suffixIcon: IconButton(icon: const Icon(Icons.date_range), onPressed: _showMyDatePicker,),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(responsive.smallBorderRadius),
              borderSide: const BorderSide(
                color: Color(0xff79747E),
                width: 3,
              ),
              ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(responsive.smallBorderRadius),
              borderSide: const BorderSide(
                color: Palette.primaryColor,
                width: 3,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: responsive.defaultMargin),
            Text(
              /*selectedDate?.toIso8601String().split('T')[0] ?? 'No date selected',*/
              'MM/dd/yyyy',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
