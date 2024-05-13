import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/home/page/home_page.dart';

class HomeModule extends Module {
  static const String homePage = '/homePage';
  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.child(homePage, child: (context) => const HomePage(), transition: TransitionType.fadeIn);
  }
}
