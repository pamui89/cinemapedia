import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/datasources/movies_datasource.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infraestructure/mappers/movie_mapper.dart';
import 'package:cinemapedia/infraestructure/models/the_movie_db/the_movie_db_response.dart';
import 'package:dio/dio.dart';

const theMovieDbApiBaseUrl = 'https://api.themoviedb.org';
const theMovieDbApiVersion = '3';
const theMovieDbApiBaseUrlWithVersion =
    '$theMovieDbApiBaseUrl/$theMovieDbApiVersion/';

class TheMovieDbDatasource extends MoviesDatasource {
  final dio = Dio(
      BaseOptions(
        baseUrl: theMovieDbApiBaseUrlWithVersion, 
        queryParameters: {
          'api_key': Environment.theMovieDbKey,
          'language': 'es-ES',
        }
      )
  );
  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final response = await dio.get('movie/now_playing');
    final theMovieDbresponse = TheMovieDbResponse.fromJson(response.data);
    final List<Movie> movies = theMovieDbresponse.results
      .where((theMovieDb) => theMovieDb.posterPath != 'no-poster')
      .map(
      (themoviedb) => MovieMapper.theMovieDbToEntity(themoviedb)
      ).toList();

    return movies;
  }
}
