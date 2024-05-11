import 'package:flutter/material.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class TextButtonCustom extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const TextButtonCustom({super.key, this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: CustomColor.orange,
          decoration: TextDecoration.underline,
          decorationColor: CustomColor.orange,
          textStyle: TextStyle(
            height: 4,
          ),
        ),
      ),
    );
  }
}
