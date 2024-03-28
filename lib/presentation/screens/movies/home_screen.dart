import 'package:cinemapedia/presentation/views/movies/categories_view.dart';
import 'package:cinemapedia/presentation/views/movies/favorites_view.dart';
import 'package:cinemapedia/presentation/views/movies/home_view.dart';
import 'package:cinemapedia/presentation/widgets/shared/custom_botton_navigation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  final int pageIndex;

  const HomeScreen({super.key, required this.pageIndex});

  final viewRoutes = const <Widget>[
    HomeView(),
    CategoriesView(),
    FavoritesView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CustomBottonNavigation(pageIndex: pageIndex,),
        body: IndexedStack(
          index: pageIndex,
          children: viewRoutes,
        ));
  }
}
