import 'package:flutter/material.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldCustom extends StatelessWidget {
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final String? label;
  final IconData? icon;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final String? titulo;
  final void Function(String value)? onChanged;

  const TextFieldCustom({
    super.key,
    this.validator,
    this.onSaved,
    this.label,
    this.icon,
    this.controller,
    this.onChanged,
    this.keyboardType,
    this.obscureText,
    this.titulo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo ?? '',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: CustomColor.fontBlack,
          ),
        ),
        const SizedBox(height: 6),
        TextFormField(
          controller: controller,
          validator: validator,
          onSaved: onSaved,
          onChanged: onChanged,
          obscureText: obscureText ?? false,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: CustomColor.fontLight,
            ),
            contentPadding: const EdgeInsets.only(left: 20, bottom: 30),
            suffixIcon: icon == null
                ? null
                : Icon(
                    icon,
                    color: CustomColor.fontLight,
                    size: 18,
                  ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: CustomColor.borderColor, width: 1),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: CustomColor.borderColor, width: 1),
              borderRadius: BorderRadius.circular(8),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: CustomColor.borderColor, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: CustomColor.borderColor, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}
