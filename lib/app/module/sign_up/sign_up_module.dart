import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/sign_up/page/sign_up_page.dart';

class SignUpModule extends Module {
  static const String signUp = '/signUp';
  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.child(signUp, child: (context) => const SignUpPage(), transition: TransitionType.fadeIn);
  }
}
