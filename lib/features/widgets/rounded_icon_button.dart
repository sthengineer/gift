import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  /*final IconData icon;*/
  final double width;
  final double height;
  final String imageAddress;
  final Color iconColor;
  final Color borderColor;
  final VoidCallback onPressed;

  const RoundedIconButton(
      {Key? key,
      required this.iconColor,
      required this.borderColor,
      required this.onPressed,
      required this.width,
      required this.height,
      required this.imageAddress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
          side: BorderSide(color: borderColor, width: 2),
        ),
        padding: const EdgeInsets.all(20),
      ),
      child: Image.asset(
        imageAddress,
        color: iconColor,
        width: width,
        height: height,
      ),
    );
  }
}
