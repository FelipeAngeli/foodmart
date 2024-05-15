import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/payment/page/payment_cacel_page.dart';
import 'package:fluttermart/app/module/payment/page/payment_card_page.dart';
import 'package:fluttermart/app/module/payment/page/payment_form_page.dart';
import 'package:fluttermart/app/module/payment/page/payment_page.dart';
import 'package:fluttermart/app/module/payment/page/payment_pix_page.dart';
import 'package:fluttermart/app/module/payment/page/payment_resume_page.dart';
import 'package:fluttermart/app/module/payment/page/payment_success_page.dart';

class PaymentModule extends Module {
  static const String paymentPage = '/paymentPage';
  static const String paymentFormPage = '/paymentFormPage';
  static const String paymentCardPage = '/paymentCardPage';
  static const String paymentPixPage = '/paymentPixPage';
  static const String paymentSuccessPage = '/paymentSuccessPage';
  static const String paymentResumePage = '/paymentResumePage';
  static const String paymentCancelPage = '/paymentCancelPage';
  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.child(paymentPage, child: (context) => const PaymentPage(), transition: TransitionType.fadeIn);
    r.child(paymentFormPage, child: (context) => const PaymentFormPage(), transition: TransitionType.fadeIn);
    r.child(paymentCardPage, child: (context) => const PaymentCardPage(), transition: TransitionType.fadeIn);
    r.child(paymentPixPage, child: (context) => const PaymentPixPage(), transition: TransitionType.fadeIn);
    r.child(paymentSuccessPage, child: (context) => const PaymentSuccessPage(), transition: TransitionType.fadeIn);
    r.child(paymentResumePage, child: (context) => const PaymentResumePage(), transition: TransitionType.fadeIn);
    r.child(paymentCancelPage, child: (context) => const PaymentCancelPage(), transition: TransitionType.fadeIn);
  }
}
