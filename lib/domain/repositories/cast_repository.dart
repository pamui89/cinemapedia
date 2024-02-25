import 'package:cinemapedia/domain/entities/cast_member.dart';

abstract class CastRepository {
  Future<List<CastMember>> getCastByMovie(int movieId);
}
