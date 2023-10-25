import 'package:flutter/material.dart';
import 'package:gift/core/constants/palette.dart';
import 'package:gift/core/constants/responsive.dart';

class NameInputBox extends StatefulWidget {
  final String titleText;
  final String hintText;
  final bool enableSuggestions;
  final bool autocorrect;

  const NameInputBox(
      {super.key,
      required this.titleText,
      required this.hintText,
      required this.enableSuggestions,
      required this.autocorrect});

  @override
  _NameInputBoxState createState() => _NameInputBoxState();
}

class _NameInputBoxState extends State<NameInputBox> {
  final TextEditingController nameController = TextEditingController();

  void _clearName() {
    if (widget.titleText.isNotEmpty) {
      setState(() {
        nameController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: nameController,
      enableSuggestions: widget.enableSuggestions,
      autocorrect: widget.autocorrect,
      decoration: InputDecoration(
        labelText: widget.titleText,
        hintText: widget.hintText,
        suffixIcon: IconButton(
            icon: const Icon(Icons.clear_rounded), onPressed: _clearName),
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
    );
  }
}
