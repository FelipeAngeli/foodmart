import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/sign_in/page/sign_in_page.dart';

class SignInModule extends Module {
  static const String signIn = '/signIn';
  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.child(signIn, child: (context) => const SignInPage(), transition: TransitionType.fadeIn);
  }
}
