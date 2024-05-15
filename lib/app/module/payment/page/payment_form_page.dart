import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/widgets/app_bar_custom.dart';
import 'package:fluttermart/app/module/widgets/btn_custom.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentFormPage extends StatelessWidget {
  const PaymentFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: '',
        // subtitle: 'Escolha a forma de pagamento',
      ),
      body: Container(
        color: CustomColor.backgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Forma de pagamento',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: CustomColor.fontBlack,
              ),
            ),
            const SizedBox(height: 48),
            ButtomCustom(
              width: 240,
              height: 45,
              titulo: 'Pagar com cartão',
              onPressed: () {
                Modular.to.pushNamed('/paymentCardPage');
              },
            ),
            const SizedBox(height: 24),
            ButtomCustom(
              width: 240,
              height: 45,
              titulo: 'Pagar com PIX',
              onPressed: () {
                Modular.to.pushNamed('/paymentPixPage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
