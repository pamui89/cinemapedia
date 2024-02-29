import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottonNavigation extends StatelessWidget {
  final int pageIndex;
  const CustomBottonNavigation({super.key, required this.pageIndex});

  void _onItemTap(BuildContext context, int tabIndex) {
    context.go('/home/$tabIndex');
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (tabIndex) => _onItemTap(context, tabIndex),
        elevation: 100,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_max), label: 'Inicio'),
          BottomNavigationBarItem(
              icon: Icon(Icons.label_outline), label: 'Categorías'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'Favoritos'),
        ]);
  }
}
