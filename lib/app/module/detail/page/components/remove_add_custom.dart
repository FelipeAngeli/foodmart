import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class RemoveAddCustom extends StatelessWidget {
  const RemoveAddCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            // _showBottomSheet();
          },
          child: Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: CustomColor.fontBlack,
              ),
            ),
            child: Center(
              child: Icon(
                Icons.remove,
                size: 16,
                color: CustomColor.fontBlack,
              ),
            ),
          ),
        ),
        const SizedBox(width: 5),
        Text(
          '05',
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: CustomColor.fontBlack,
          ),
        ),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () {
            // _showBottomSheet();
          },
          child: Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: CustomColor.fontBlack,
              ),
            ),
            child: Center(
              child: Icon(
                Icons.add,
                size: 16,
                color: CustomColor.fontBlack,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
