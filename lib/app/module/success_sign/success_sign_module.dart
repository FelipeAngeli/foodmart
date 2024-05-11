import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/success_sign/page/success_sign_page.dart';

class SuccessSignModule extends Module {
  static const String successSign = '/successSign';
  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.child(successSign, child: (context) => const SuccessSignPage(), transition: TransitionType.fadeIn);
  }
}
