import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gift/core/constants/palette.dart';
import 'package:gift/core/constants/responsive.dart';
import 'package:gift/core/email_validator.dart';

class EmailInputBox extends StatefulWidget {
  final String titleText;
  final String hintText;

  const EmailInputBox({
    super.key,
    required this.titleText,
    required this.hintText,
  });

  @override
  _EmailInputBoxState createState() => _EmailInputBoxState();
}

class _EmailInputBoxState extends State<EmailInputBox> {
  final TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String _emailError = "ok";
  bool _isValidEmail = false;

  String? Function(String?)? get _validateEmail => (value) {
    // emailController.text === value

    // Validate the email address.
    if (value == null || value.isEmpty) {
      return 'Email Address cannot be empty';
    }
    else if (EmailValidator.isValid(value) == false) {
      _emailError = 'Email Address is not valid';
      return _emailError;
    } else if (EmailValidator.isValid(value) == true) {
      return null;
    }
    return null;
  };

  void _clearName() {
    if (widget.titleText.isNotEmpty) {
      setState(() {
        emailController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        validator: _validateEmail,
        decoration: InputDecoration(
          labelText: widget.titleText,
          hintText: widget.hintText,
          suffixIcon: IconButton(
              icon: const Icon(Icons.clear_rounded), onPressed: _clearName),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: const OutlineInputBorder(),
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
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(responsive.smallBorderRadius),
            borderSide: const BorderSide(
              color: Color(0xffba1a1a),
              width: 3,
            ),
          ),
        ),
      ),
    );
  }
}
