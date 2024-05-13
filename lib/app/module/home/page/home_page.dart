import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/home/page/components/novo_sabor_view.dart';
import 'package:fluttermart/app/module/widgets/cart_item.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.backgroundColor,
        centerTitle: false,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'FoodMart',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: CustomColor.fontBlack,
                ),
              ),
              Text(
                'Bora fazer seu pedido?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: CustomColor.fontLight,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Container(
              margin: const EdgeInsets.only(right: 24),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/image/avatar.jpeg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          color: CustomColor.backgroundColor,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 48),
              SizedBox(
                width: double.infinity,
                height: 225,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 0),
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Modular.to.pushNamed('/detailPage');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: CustomColor.shadowColor,
                              blurRadius: 8,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: const CartItem(
                          image: 'assets/image/card/item1.png',
                          title: 'Karachi Biryani',
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 50,
                child: TabBar(
                  controller: _tabController,
                  indicatorColor: CustomColor.fontBlack,
                  labelColor: CustomColor.fontBlack,
                  dividerColor: CustomColor.shadowColor,
                  dividerHeight: 3,
                  unselectedLabelColor: CustomColor.fontLight,
                  isScrollable: false,
                  labelPadding: EdgeInsets.zero,
                  labelStyle: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: CustomColor.fontBlack,
                  ),
                  tabs: const [
                    Tab(text: 'Novos Sabores'),
                    Tab(text: 'Populares'),
                    Tab(text: 'Recomendados'),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 300,
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    NovoSaborView(),
                    NovoSaborView(),
                    NovoSaborView(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDivider() {
    return VerticalDivider(
      width: 40, // Largura total do divisor, incluindo o espaço em branco
      thickness: 3, // Espessura da linha do divisor
      color: CustomColor.shadowColor, // Cor do divisor
    );
  }
}
