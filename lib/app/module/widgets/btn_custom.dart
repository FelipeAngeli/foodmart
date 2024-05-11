import 'package:flutter/material.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtomCustom extends StatelessWidget {
  final void Function()? onPressed;
  final String titulo;
  const ButtomCustom({super.key, this.onPressed, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(CustomColor.orange),
          shape: MaterialStateProperty.all(const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          )),
        ),
        onPressed: onPressed,
        child: Text(
          titulo,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: CustomColor.textButton,
          ),
        ),
      ),
    );
  }
}
