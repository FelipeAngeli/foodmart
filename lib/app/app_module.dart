import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/sign_up/sign_up_module.dart';
import 'package:fluttermart/app/module/splash/splash_page.dart';
import 'package:fluttermart/app/module/sign_in/sign_in_module.dart';

class AppModule extends Module {
  // @override
  // final List<Bind> binds = [];

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const SplashPage());
    r.module(Modular.initialRoute, module: SignInModule());
    r.module(Modular.initialRoute, module: SignUpModule());
    // r.module(Modular.initialRoute, module: SearchModule());
    // r.module(Modular.initialRoute, module: FraseModule());
    // r.module(Modular.initialRoute, module: ProfileModule());
  }
}
