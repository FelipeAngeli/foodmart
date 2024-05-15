import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/widgets/app_bar_custom.dart';
import 'package:fluttermart/app/module/widgets/btn_custom.dart';
import 'package:fluttermart/app/utils/custom_color.dart';

class PaymentPixPage extends StatefulWidget {
  const PaymentPixPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PaymentPixPageState createState() => _PaymentPixPageState();
}

class _PaymentPixPageState extends State<PaymentPixPage> {
  final TextEditingController _valueController = TextEditingController();

  @override
  void dispose() {
    _valueController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Pagamento PIX',
      ),
      body: SingleChildScrollView(
        child: Container(
          color: CustomColor.backgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 80),
              Container(
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  border: Border.all(color: CustomColor.orange),
                ),
                child: Image.asset('assets/image/qrcode.png'),
              ),
              const SizedBox(height: 160),
              ButtomCustom(
                height: 45,
                width: double.infinity,
                titulo: 'Efetuar pagamento',
                onPressed: () {
                  Modular.to.pushNamed('/paymentSuccessPage');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
