import 'package:flutter/material.dart';
import 'package:gift/core/constants/palette.dart';
import 'package:gift/core/constants/responsive.dart';
import 'package:gift/features/widgets/date_input_box.dart';
import 'package:gift/features/widgets/name_input_box.dart';
import 'package:gift/features/widgets/password_input_box.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --------------------- UserName Filed ---------------------
              const SizedBox(height: 70.0),
              const Padding(
                padding: EdgeInsets.only(
                  left: responsive.largePadding,
                  right: responsive.largePadding,
                ),
                child: NameInputBox(titleText: 'UserName', hintText: '@Username', autocorrect: false, enableSuggestions: true),
              ),
              // --------------------- FullName Filed ---------------------
              const SizedBox(height: 50.0),
              const Padding(
                padding: EdgeInsets.only(
                  left: responsive.largePadding,
                  right: responsive.largePadding,
                ),
                child: NameInputBox(titleText: 'Full name', hintText: 'Full name', autocorrect: false, enableSuggestions: false),
              ),
              // --------------------- Password Filed ---------------------
              const SizedBox(height: 50.0),
              const Padding(
                padding: EdgeInsets.only(
                  left: responsive.largePadding,
                  right: responsive.largePadding,
                ),
                child: PasswordInputBox(
                  titleText: 'Password',
                  hintText: '****',
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                ),
              ),
              // --------------------- BirthDate Filed ---------------------
              const SizedBox(height: 50.0),
              const Padding(
                padding: EdgeInsets.only(
                  left: responsive.largePadding,
                  right: responsive.largePadding,
                ),
                child: DateInputBox(),
              ),
              // --------------------- Confirm Button ---------------------
              const SizedBox(height: 50.0),
              Padding(
                padding: const EdgeInsets.only(
                  left: responsive.largePadding,
                  right: responsive.largePadding,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Palette.primaryColor,
                    ),
                    child: const Text(
                      'Confirm',
                      style: TextStyle(
                        color: Palette.pureWhite,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
class CustomDecoratedInputBox extends StatelessWidget {
  final String titleText;
  final String hintText;
  final bool obscureText;
  final bool enableSuggestions;
  final bool autocorrect;

  const CustomDecoratedInputBox(
      {super.key,
      required this.titleText,
      required this.hintText,
      required this.obscureText,
      required this.enableSuggestions,
      required this.autocorrect});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      enableSuggestions: enableSuggestions,
      autocorrect: autocorrect,
      decoration: InputDecoration(
        labelText: titleText,
        hintText: hintText,
        suffixIcon:
            titleText == 'Password' ? null : const Icon(Icons.clear_rounded),
        suffix: titleText == 'Password'
            ? InkWell(
                onTap: () {},
                child: obscureText
                    ? const Icon(Icons.visibility_outlined)
                    : const Icon(Icons.visibility_off_outlined),
              )
            : null,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff79747E),
            width: 3,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff49454f),
            width: 3,
          ),
        ),
      ),
    );
  }
}
*/
