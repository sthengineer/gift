import 'package:flutter/material.dart';
import 'package:gift/core/constants/responsive.dart';
import 'package:gift/features/widgets/email_input_box.dart';
import 'package:gift/core/constants/palette.dart';
import 'package:gift/features/widgets/password_input_box.dart';
import 'package:gift/features/widgets/rounded_icon_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Text(
            'Sign Up',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Palette.primaryColor
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.navigate_next),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: responsive.distanceFromAbove),
              // --------------------- Email Filed ---------------------
              const Padding(
                padding: EdgeInsets.only(
                  left: responsive.largePadding,
                  right: responsive.largePadding,
                ),
                child: EmailInputBox(
                  titleText: 'Email',
                  hintText: 'email@gmail.com',
                ),
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
              // --------------------- Sign In Button ---------------------
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
                      'Sign In',
                      style: TextStyle(
                        color: Palette.pureWhite,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
              // --------------------- Other Ways ---------------------
              const SizedBox(height: 50.0),
              Center(
                child: Column(
                  children: [
                    const Text("Or login with?"),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundedIconButton(
                          imageAddress: 'assets/images/icons/google.png',
                          iconColor: Palette.signInIconImageColor,
                          borderColor: Palette.signInIconBorderColor,
                          onPressed: () {},
                          width: 24.0,
                          height: 24.0,
                        ),
                        const SizedBox(width: 27),
                        RoundedIconButton(
                          imageAddress: 'assets/images/icons/apple.png',
                          iconColor: Palette.signInIconImageColor,
                          borderColor: Palette.signInIconBorderColor,
                          onPressed: () {},
                          width: 24.0,
                          height: 24.0,
                        ),
                        const SizedBox(width: 27),
                        RoundedIconButton(
                          imageAddress: 'assets/images/icons/facebook.png',
                          iconColor: Palette.signInIconImageColor,
                          borderColor: Palette.signInIconBorderColor,
                          onPressed: () {},
                          width: 24.0,
                          height: 24.0,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
