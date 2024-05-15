import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/payment/page/components/delivery_custom.dart';
import 'package:fluttermart/app/module/payment/page/components/detalhes_custom.dart';
import 'package:fluttermart/app/module/widgets/app_bar_custom.dart';
import 'package:fluttermart/app/module/widgets/btn_custom.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Pagamento',
        subtitle: 'Realize o pagamento',
      ),
      body: Container(
        color: CustomColor.backgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 64),
            Text(
              'Item encomendado',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: CustomColor.fontBlack,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: AssetImage('assets/image/card/item1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Karachi Biryani',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: CustomColor.fontBlack,
                      ),
                    ),
                    Text(
                      'R\$ 15,00',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: CustomColor.fontLight,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '14 items',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: CustomColor.fontLight,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Detalhes da transação',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: CustomColor.fontBlack,
              ),
            ),
            const SizedBox(height: 16),
            const DetalhesCustom(),
            const SizedBox(height: 32),
            Text(
              'Entregar para:',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: CustomColor.fontBlack,
              ),
            ),
            const SizedBox(height: 16),
            const DeliveryCustom(),
            const SizedBox(height: 64),
            ButtomCustom(
              height: 45,
              width: double.infinity,
              titulo: 'Pagar',
              onPressed: () {
                Modular.to.pushNamed('/paymentFormPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
