import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class RichTextCustom extends StatelessWidget {
  final String text;
  final String linkText;
  final void Function()? onLinkTap;

  const RichTextCustom({
    super.key,
    required this.text,
    required this.linkText,
    this.onLinkTap,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: CustomColor.fontBlack,
        ),
        children: [
          TextSpan(text: text),
          const TextSpan(text: ' '),
          TextSpan(
            text: linkText,
            style: TextStyle(
              color: CustomColor.orange,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            recognizer: TapGestureRecognizer()..onTap = onLinkTap,
          ),
        ],
      ),
    );
  }
}
