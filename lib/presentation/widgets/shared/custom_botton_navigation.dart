import 'package:flutter/material.dart';

class CustomBottonNavigation extends StatelessWidget {
  const CustomBottonNavigation({super.key});

  // void _onItemTap(BuildContext context, int tabIndex) {
  //   switch (tabIndex) {
  //     case 0:
  //       context.go('/');
  //       break;
  //     case 1:
  //       context.go('/categories');
  //       break;
  //     case 2:
  //       context.go('/favorites');
  //       break;
  //   }
  // }

  // int _currentTabIndex(BuildContext context) {
  //   final String? tabIndex = GoRouterState.of(context).fullPath;

  //   switch (tabIndex) {
  //     case '/':
  //       return 0;
  //     case '/categories':
  //       return 1;
  //     case '/favorites':
  //       return 2;
  //     default:
  //       return 0;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // currentIndex: _currentTabIndex(context),
      //   onTap: (tabIndex) => _onItemTap(context, tabIndex),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_max), label: 'Inicio'),
          BottomNavigationBarItem(
              icon: Icon(Icons.label_outline), label: 'Categorías'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'Favoritos'),
        ]);
  }
}
