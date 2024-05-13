import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/widgets/btn_custom.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: CustomColor.backgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Image.asset('assets/image/entrega.png'),
            const SizedBox(height: 32),
            Text(
              'Pedido realizado com sucesso!',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: CustomColor.fontBlack,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              'Seu pedido foi realizado com sucesso e está em processo de entrega.',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: CustomColor.fontLight,
              ),
            ),
            const SizedBox(height: 32),
            ButtomCustom(
              height: 45,
              width: 200,
              titulo: 'Faça outro pedido',
              onPressed: () {
                Modular.to.pushNamed('/homePage');
              },
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: 200,
              height: 45,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      side: BorderSide(color: CustomColor.orange),
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                ),
                onPressed: () {
                  Modular.to.pushNamed('/paymentResumePage');
                },
                child: Text(
                  'Ver meu pedido',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: CustomColor.orange,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
