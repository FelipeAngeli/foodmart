import 'package:flutter/material.dart';

import 'package:fluttermart/app/module/widgets/btn_custom.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessSignPage extends StatelessWidget {
  const SuccessSignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/backgroundOne.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              'Yesss! Cadastro Completo',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: CustomColor.fontBlack,
              ),
            ),
            Text(
              'Agora você pode fazer seus pedidos',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: CustomColor.fontLight,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 80, top: 20, bottom: 200),
              child: ButtomCustom(
                width: double.infinity,
                height: 45,
                titulo: 'Fazer Pedido',
                onPressed: () {
                  Navigator.pushNamed(context, '/homePage');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
