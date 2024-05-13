import 'package:flutter/material.dart';
import 'package:fluttermart/app/utils/custom_color.dart';

class FoodmarketCustom extends StatelessWidget {
  const FoodmarketCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Avaliar aplicativo',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: CustomColor.fontBlack,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: CustomColor.fontLight,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Centro de ajuda',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: CustomColor.fontBlack,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: CustomColor.fontLight,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Política de Privacidade',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: CustomColor.fontBlack,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: CustomColor.fontLight,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Termos e Condições',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: CustomColor.fontBlack,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: CustomColor.fontLight,
            ),
          ],
        ),
      ],
    );
  }
}
