import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/detail/detail_module.dart';
import 'package:fluttermart/app/module/detail/page/detail_page.dart';
import 'package:fluttermart/app/module/home/home_module.dart';
import 'package:fluttermart/app/module/home/page/home_page.dart';
import 'package:fluttermart/app/module/sign_up/sign_up_module.dart';
import 'package:fluttermart/app/module/splash/splash_page.dart';
import 'package:fluttermart/app/module/sign_in/sign_in_module.dart';
import 'package:fluttermart/app/module/success_sign/success_sign_module.dart';

class AppModule extends Module {
  // @override
  // final List<Bind> binds = [];

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => DetailPage());
    r.module(Modular.initialRoute, module: SignInModule());
    r.module(Modular.initialRoute, module: SignUpModule());
    r.module(Modular.initialRoute, module: SuccessSignModule());
    r.module(Modular.initialRoute, module: HomeModule());
    r.module(Modular.initialRoute, module: DetailModule());
    // r.module(Modular.initialRoute, module: ProfileModule());
  }
}
