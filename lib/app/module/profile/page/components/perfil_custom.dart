import 'package:flutter/material.dart';
import 'package:fluttermart/app/utils/custom_color.dart';

class PerfilCustom extends StatelessWidget {
  const PerfilCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Editar Perfil',
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
              'Endereço Residencial',
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
              'Segurança',
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
              'Pagamentos',
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
