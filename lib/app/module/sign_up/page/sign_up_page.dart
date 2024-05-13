import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/widgets/app_bar_custom.dart';
import 'package:fluttermart/app/module/widgets/btn_custom.dart';
import 'package:fluttermart/app/module/widgets/dashed_border_custom.dart';
import 'package:fluttermart/app/module/widgets/richtext_custom.dart';
import 'package:fluttermart/app/module/widgets/textfield_custom.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundColor,
      appBar: const CustomAppBar(
        title: 'Registrar',
        subtitle: 'Registre-se e coma',
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 74),
              Center(
                child: CustomPaint(
                  painter: DashedBorderCustom(),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: CustomColor.lightBackground,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      icon: Text(
                        'Add Photo',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: CustomColor.fontLight,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const TextFieldCustom(
                titulo: 'Nome',
                label: 'Digite seu nome',
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 16),
              const TextFieldCustom(
                titulo: 'Email',
                label: 'Digite seu email',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              const TextFieldCustom(
                titulo: 'Senha',
                label: 'Digite sua senha',
                keyboardType: TextInputType.text,
                obscureText: true,
              ),
              const SizedBox(height: 24),
              ButtomCustom(
                width: double.infinity,
                height: 45,
                titulo: 'Registrar',
                onPressed: () {},
              ),
              const SizedBox(height: 16),
              RichTextCustom(
                text: 'Eu já tenho uma conta',
                linkText: 'Entrar',
                onLinkTap: () {
                  Modular.to.pushNamed('/login');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
