import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/widgets/btn_custom.dart';
import 'package:fluttermart/app/module/widgets/btn_link_custom.dart';
import 'package:fluttermart/app/module/widgets/richtext_custom.dart';
import 'package:fluttermart/app/module/widgets/text_btn_custom.dart';
import 'package:fluttermart/app/module/widgets/textfield_custom.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: CustomColor.backgroundColor,
        elevation: 0,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.fontBlack,
                ),
              ),
              Text(
                'Encontre a sua melhor refeição de sempre',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: CustomColor.fontLight,
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 82),
              const TextFieldCustom(
                titulo: 'Email',
                label: 'Digite o seu email',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              const TextFieldCustom(
                titulo: 'Senha',
                label: 'Digite a sua senha',
                obscureText: true,
              ),
              const SizedBox(height: 24),
              ButtomCustom(
                width: double.infinity,
                height: 45,
                titulo: 'Entrar',
                onPressed: () {
                  Modular.to.pushNamed('/successSign');
                },
              ),
              const SizedBox(height: 12),
              TextButtonCustom(
                text: 'Esqueceu a senha?',
                onPressed: () {},
              ),
              const SizedBox(height: 24),
              Text(
                '- ou continue com -',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.fontLight,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BtnLinkCustom(
                    icon: Image.asset('assets/icons/googleIcon.png'),
                    label: const Text('Google'),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 12),
                  BtnLinkCustom(
                    icon: Image.asset('assets/icons/facebookIcon.png'),
                    label: const Text('Facebook'),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 24),
              RichTextCustom(
                text: 'Não tem uma conta? ',
                linkText: 'Registre-se',
                onLinkTap: () {
                  Modular.to.pushNamed('/signUp');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
