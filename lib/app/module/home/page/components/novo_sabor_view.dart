import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermart/app/module/widgets/star_custom.dart';
import 'package:fluttermart/app/utils/custom_color.dart';

class NovoSaborView extends StatelessWidget {
  const NovoSaborView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: CustomColor.backgroundColor,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: CustomColor.shadowColor,
                      blurRadius: 10,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/image/card/imagem1.png',
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Soup',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.fontBlack,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'PKR 289',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: CustomColor.fontLight,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 32),
              const StarCustom(),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: CustomColor.backgroundColor,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: CustomColor.shadowColor,
                      blurRadius: 10,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/image/card/imagem2.png',
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Burger',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.fontBlack,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'PKR 459',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: CustomColor.fontLight,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 32),
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
              Icon(
                Icons.star,
                color: CustomColor.fontLight,
              ),
              Icon(
                Icons.star,
                color: CustomColor.fontLight,
              ),
              const SizedBox(width: 4),
              Text(
                '2.0',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: CustomColor.fontLight,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: CustomColor.backgroundColor,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: CustomColor.shadowColor,
                      blurRadius: 10,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/image/card/imagem3.png',
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chicken',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.fontBlack,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'PKR 450',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: CustomColor.fontLight,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 32),
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
                color: CustomColor.orange,
              ),
              const SizedBox(width: 4),
              Text(
                '5.0',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: CustomColor.fontLight,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: CustomColor.backgroundColor,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: CustomColor.shadowColor,
                      blurRadius: 10,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/image/card/imagem4.png',
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pizza',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.fontBlack,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'PKR 999',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: CustomColor.fontLight,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 32),
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
              Icon(
                Icons.star,
                color: CustomColor.fontLight,
              ),
              const SizedBox(width: 4),
              Text(
                '3.0',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: CustomColor.fontLight,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
