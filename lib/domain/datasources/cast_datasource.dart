import 'package:cinemapedia/domain/entities/cast_member.dart';

abstract class CastDatasource {
  Future<List<CastMember>> getCastByMovie(String movieId);
}
