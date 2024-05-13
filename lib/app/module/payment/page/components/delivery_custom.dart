import 'package:flutter/material.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryCustom extends StatelessWidget {
  const DeliveryCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Nome',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: CustomColor.fontLight,
              ),
            ),
            const Spacer(),
            Text(
              'Felipe Angeli',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: CustomColor.fontBlack,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Text(
              'Telefone',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: CustomColor.fontLight,
              ),
            ),
            const Spacer(),
            Text(
              '0300 0000000',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: CustomColor.fontBlack,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Text(
              'Endereço',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: CustomColor.fontLight,
              ),
            ),
            const Spacer(),
            Text(
              'Wah Model Town',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: CustomColor.fontBlack,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Text(
              'Cidade',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: CustomColor.fontLight,
              ),
            ),
            const Spacer(),
            Text(
              'São Paulo - SP',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color(0xff4BAF31),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
