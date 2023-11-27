import 'package:flutter/material.dart';
import 'package:gift/core/constants/palette.dart';
import 'package:gift/core/constants/responsive.dart';

class PasswordInputBox extends StatefulWidget {
  final String titleText;
  final String hintText;
  final bool obscureText;
  final bool enableSuggestions;
  final bool autocorrect;

  const PasswordInputBox(
      {super.key,
        required this.titleText,
        required this.hintText,
        required this.obscureText,
        required this.enableSuggestions,
        required this.autocorrect});

  @override
  _PasswordInputBoxState createState() => _PasswordInputBoxState();
}

class _PasswordInputBoxState extends State<PasswordInputBox> {

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      enableSuggestions: widget.enableSuggestions,
      autocorrect: widget.autocorrect,
      decoration: InputDecoration(
        labelText: widget.titleText,
        hintText: widget.hintText,
        suffixIcon:
        widget.titleText == 'Password' ? null : const Icon(Icons.clear_rounded),
        suffix: widget.titleText == 'Password'
            ? InkWell(
          onTap: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          child: obscureText
              ? const Icon(Icons.visibility_outlined)
              : const Icon(Icons.visibility_off_outlined),
        )
            : null,
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
