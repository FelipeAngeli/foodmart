import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/pedidos/page/pedido_page.dart';

class PedidoModule extends Module {
  static const String pedidoPage = '/pedidoPage';
  @override
  void routes(RouteManager r) {
    super.routes(r);
    r.child(pedidoPage, child: (context) => const PedidoPage(), transition: TransitionType.fadeIn);
  }
}
