import 'package:cinemapedia/config/constants/environment.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theMoviedbKey = Environment.theMoviedbKey;
    return Scaffold(
        body: Center(
      child: Text(theMoviedbKey),
    ));
  }
}
