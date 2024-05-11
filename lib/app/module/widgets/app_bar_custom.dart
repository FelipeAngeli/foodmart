import 'package:flutter/material.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? subtitle;
  final double? height;

  const CustomAppBar({super.key, this.title = 'Custom AppBar', this.height, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60, left: 24),
      height: preferredSize.height,
      color: CustomColor.backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            icon: Container(
              height: 24,
              width: 24,
              padding: const EdgeInsets.only(left: 7, top: 4, right: 4, bottom: 4),
              decoration: BoxDecoration(
                color: CustomColor.orange,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Icon(
                Icons.arrow_back_ios,
                size: 14,
                color: CustomColor.backgroundColor,
              ),
            ),
            onPressed: () {
              ModalRoute.of(context)!.navigator!.pop();
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? '',
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: CustomColor.fontBlack,
                  ),
                ),
                Text(
                  subtitle ?? '',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: CustomColor.fontLight,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? 114.0);
}
