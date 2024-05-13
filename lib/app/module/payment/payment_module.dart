import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/payment/page/payment_cacel_page.dart';
import 'package:fluttermart/app/module/payment/page/payment_page.dart';
import 'package:fluttermart/app/module/payment/page/payment_resume_page.dart';
import 'package:fluttermart/app/module/payment/page/payment_success_page.dart';

class PaymentModule extends Module {
  static const String paymentPage = '/paymentPage';
  static const String paymentSuccessPage = '/paymentSuccessPage';
  static const String paymentResumePage = '/paymentResumePage';
  static const String paymentCancelPage = '/paymentCancelPage';
  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.child(paymentPage, child: (context) => const PaymentPage(), transition: TransitionType.fadeIn);
    r.child(paymentSuccessPage, child: (context) => const PaymentSuccessPage(), transition: TransitionType.fadeIn);
    r.child(paymentResumePage, child: (context) => const PaymentResumePage(), transition: TransitionType.fadeIn);
    r.child(paymentCancelPage, child: (context) => const PaymentCancelPage(), transition: TransitionType.fadeIn);
  }
}
