import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/payment/page/components/cred_card_widget.dart';
import 'package:fluttermart/app/module/widgets/app_bar_custom.dart';
import 'package:fluttermart/app/module/widgets/btn_custom.dart';
import 'package:fluttermart/app/src/model/card_info_model.dart';

class PaymentCardPage extends StatefulWidget {
  const PaymentCardPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PaymentCardPageState createState() => _PaymentCardPageState();
}

class _PaymentCardPageState extends State<PaymentCardPage> {
  final CardInfoModel cardInfo = CardInfoModel();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();

  @override
  void initState() {
    super.initState();
    numberController.addListener(() => setState(() => cardInfo.cardNumber = numberController.text));
    nameController.addListener(() => setState(() => cardInfo.cardHolderName = nameController.text));
    dateController.addListener(() => setState(() => cardInfo.expiryDate = dateController.text));
    cvvController.addListener(() => setState(() => cardInfo.cvv = cvvController.text));
  }

  @override
  void dispose() {
    numberController.dispose();
    nameController.dispose();
    dateController.dispose();
    cvvController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Cartão de crédito',
        subtitle: 'Preencha os campos',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              CreditCardWidget(
                cardNumber: numberController.text,
                cardHolderName: nameController.text,
                expiryDate: dateController.text,
                cvv: cvvController.text,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: numberController,
                  decoration: const InputDecoration(hintText: 'Número do cartão'),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(hintText: 'Nome do titular'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: dateController,
                  decoration: const InputDecoration(hintText: 'Data de validade'),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: cvvController,
                  decoration: const InputDecoration(hintText: 'CVV'),
                  keyboardType: TextInputType.number,
                  obscureText: true,
                ),
              ),
              const SizedBox(height: 46),
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
