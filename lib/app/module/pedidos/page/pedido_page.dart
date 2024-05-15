import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/pedidos/page/components/list_pedidos.dart';
import 'package:fluttermart/app/module/pedidos/page/components/pedidos_antigos.dart';
import 'package:fluttermart/app/module/widgets/bottom_bar_custom.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class PedidoPage extends StatefulWidget {
  const PedidoPage({super.key});

  @override
  State<PedidoPage> createState() => _PedidoPageState();
}

class _PedidoPageState extends State<PedidoPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedPageIndex = 1;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void _onBottomItemTapped(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.backgroundColor,
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Seus pedidos',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.fontBlack,
                ),
              ),
              Text(
                'Acompanhe seus pedidos',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: CustomColor.fontLight,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: CustomColor.backgroundColor,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: TabBar(
                controller: _tabController,
                indicatorColor: CustomColor.fontBlack,
                labelColor: CustomColor.fontBlack,
                dividerColor: CustomColor.shadowColor,
                dividerHeight: 2,
                unselectedLabelColor: CustomColor.fontLight,
                isScrollable: false,
                labelPadding: EdgeInsets.zero,
                labelStyle: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: CustomColor.fontBlack,
                ),
                tabs: const [
                  Tab(text: 'Em progresso'),
                  Tab(text: 'Pedidos anteriores'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 300,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListPedidos(
                    onTap: () {
                      Modular.to.pushNamed('/paymentPage');
                    },
                  ),
                  const PedidosAntigos(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBarCustom(
        selectedIndex: _selectedPageIndex,
        onItemSelected: _onBottomItemTapped,
      ),
    );
  }
}
