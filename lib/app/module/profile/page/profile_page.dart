import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttermart/app/module/profile/page/components/food_market_custom.dart';
import 'package:fluttermart/app/module/profile/page/components/perfil_custom.dart';
import 'package:fluttermart/app/module/widgets/app_bar_custom.dart';
import 'package:fluttermart/app/module/widgets/bottom_bar_custom.dart';
import 'package:fluttermart/app/module/widgets/dashed_border_custom.dart';
import 'package:fluttermart/app/utils/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedPageIndex = 3;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  void _onBottomItemTapped(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: '',
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        color: CustomColor.backgroundColor,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            // const SizedBox(height: 25),
            CustomPaint(
              painter: DashedBorderCustom(),
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  color: CustomColor.lightBackground,
                  borderRadius: BorderRadius.circular(50),
                  image: const DecorationImage(
                    image: AssetImage('assets/image/avatar.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Felipe Angeli',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: CustomColor.fontBlack,
              ),
            ),
            // const SizedBox(height: 4),
            Text(
              'felipe.angeli@gmail.com',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: CustomColor.fontLight,
              ),
            ),
            const SizedBox(height: 64),
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
                  Tab(text: 'Perfil'),
                  Tab(text: 'FoodMarket'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 300,
              child: TabBarView(
                controller: _tabController,
                children: const [
                  PerfilCustom(),
                  FoodmarketCustom(),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomBarCustom(
      //   selectedIndex: _selectedPageIndex,
      //   onItemSelected: _onBottomItemTapped,
      // ),
    );
  }
}
