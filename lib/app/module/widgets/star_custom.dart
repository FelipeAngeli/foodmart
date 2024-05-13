import 'package:flutter/material.dart';
import 'package:fluttermart/app/utils/custom_color.dart';

class StarCustom extends StatelessWidget {
  const StarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: CustomColor.orange,
        ),
        Icon(
          Icons.star,
          color: CustomColor.orange,
        ),
        Icon(
          Icons.star,
          color: CustomColor.orange,
        ),
        Icon(
          Icons.star,
          color: CustomColor.orange,
        ),
        Icon(
          Icons.star,
          color: CustomColor.fontLight,
        ),
        const SizedBox(width: 4),
        Text(
          '4.0',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: CustomColor.fontLight,
          ),
        ),
      ],
    );
  }
}
