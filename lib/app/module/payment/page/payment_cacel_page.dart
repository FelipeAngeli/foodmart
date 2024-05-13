import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/widgets/btn_custom.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentCancelPage extends StatelessWidget {
  const PaymentCancelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Image.asset('assets/image/cancel.png'),
            const SizedBox(height: 32),
            Text(
              'Ohhh... Não!',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: CustomColor.fontBlack,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text('Seu pedido foi cancelado com sucesso.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: CustomColor.fontLight,
                )),
            const SizedBox(height: 64),
            ButtomCustom(
              height: 45,
              width: 200,
              titulo: 'Faça outro pedido',
              onPressed: () {
                Modular.to.pushNamed('/homePage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
