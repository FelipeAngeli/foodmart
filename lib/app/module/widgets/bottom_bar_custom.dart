import 'package:flutter/material.dart';

import 'package:fluttermart/app/utils/custom_color.dart';

class BottomBarCustom extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;
  const BottomBarCustom({super.key, required this.selectedIndex, required this.onItemSelected});

  @override
  State<BottomBarCustom> createState() => _BottomBarCustomState();
}

class _BottomBarCustomState extends State<BottomBarCustom> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: CustomColor.backgroundColor,
      selectedItemColor: CustomColor.orange,
      unselectedItemColor: CustomColor.fontBlack,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      currentIndex: widget.selectedIndex,
      onTap: widget.onItemSelected,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/home.png'),
            size: 24,
          ),
          label: 'Home',
          tooltip: 'home',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/shop.png'),
            size: 24,
          ),
          label: 'Shop',
          tooltip: 'shop',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/icons/fav.png'),
            size: 24,
          ),
          label: 'Fav',
          tooltip: 'fav',
        ),
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/icons/perfil.png'),
              size: 24,
            ),
            label: 'perfil',
            tooltip: 'perfil'),
      ],
    );
  }
}
