import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:dio/dio.dart';

const theMovieDbApiBaseUrl = 'https://api.themoviedb.org';
const theMovieDbApiVersion = '3';
const theMovieDbApiBaseUrlWithVersion =
    '$theMovieDbApiBaseUrl/$theMovieDbApiVersion/';

class TheMovieDbDatasource extends MoviesDataSource {
  final dio = Dio(
      BaseOptions(baseUrl: theMovieDbApiBaseUrlWithVersion, queryParameters: {
    'api_key': Environment.theMovieDbKey,
    'language': 'es-ES',
  }));
  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = dio.get('movie/now_playing');
    final List<Movie> movies = [];

    return movies;
  }
}
