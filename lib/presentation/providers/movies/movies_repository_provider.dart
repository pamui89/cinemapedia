import 'package:cinemapedia/infraestructure/datasources/the_moviedb_datasource.dart';
import 'package:cinemapedia/infraestructure/repository/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Este repositorio es inmutable
final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(TheMovieDbDatasource());
});
