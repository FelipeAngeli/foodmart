import 'package:flutter/material.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class DetalhesCustom extends StatelessWidget {
  const DetalhesCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Karachi Biryani',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: CustomColor.fontLight,
              ),
            ),
            const Spacer(),
            Text(
              'R\$ 15,00',
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
              'Taxa de entrega',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: CustomColor.fontLight,
              ),
            ),
            const Spacer(),
            Text(
              'R\$ 3,00',
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
              'Tax 10%',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: CustomColor.fontLight,
              ),
            ),
            const Spacer(),
            Text(
              'R\$ 5,00',
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
              'Preço total',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: CustomColor.fontLight,
              ),
            ),
            const Spacer(),
            Text(
              'R\$ 43,00',
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
