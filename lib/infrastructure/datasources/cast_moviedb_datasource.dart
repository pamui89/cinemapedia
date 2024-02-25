import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/datasources/cast_datasource.dart';
import 'package:cinemapedia/domain/entities/cast_member.dart';
import 'package:cinemapedia/infrastructure/mappers/cast_member_mapper.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_credits.dart';
import 'package:dio/dio.dart';

class CastMoviedbDatasource extends CastDatasource {
  final dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': Environment.theMovieDbKey,
        'language': 'en-EN'
      }));

  List<CastMember> _jsonToCastMembers(Map<String, dynamic> json) {
    final movieCredits = MovieCredits.fromJson(json);

    final List<CastMember> cast = movieCredits.cast
        .map((cast) => CastMemberMapper.castToEntity(cast))
        .toList();

    return cast;
  }

  @override
  Future<List<CastMember>> getCastByMovie(String movieId) async {
    final response = await dio.get('/movie/$movieId/credits');
    if (response.statusCode != 200) {
      throw Exception('Movie with id: $movieId not found');
    }
    
    return _jsonToCastMembers(response.data);
  }
}
