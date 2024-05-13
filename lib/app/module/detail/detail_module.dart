import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/detail/page/detail_page.dart';

class DetailModule extends Module {
  static const String detailPage = '/detailPage';
  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.child(detailPage, child: (context) => const DetailPage(), transition: TransitionType.fadeIn);
  }
}
