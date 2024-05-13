import 'package:flutter/material.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class PedidosAntigos extends StatelessWidget {
  const PedidosAntigos({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView(
        children: [
          Row(
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
                  'assets/image/pedidos/pedido5.png',
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kari Pakora',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.fontBlack,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '1 item • PKR 289.000',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: CustomColor.fontLight,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                'Jun 12, 14:00',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: CustomColor.fontLight,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
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
                  'assets/image/pedidos/pedido1.png',
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Avosalado',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.fontBlack,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '3 items • PKR 18.000.000',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: CustomColor.fontLight,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Text(
                    'Mei 2, 09:00',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: CustomColor.fontLight,
                    ),
                  ),
                  Text(
                    'Canelado',
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: CustomColor.orange,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
