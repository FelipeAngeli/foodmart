import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/profile/page/profile_page.dart';

class ProfileModule extends Module {
  static const String profilePage = '/profilePage';
  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.child(profilePage, child: (context) => const ProfilePage(), transition: TransitionType.fadeIn);
  }
}
