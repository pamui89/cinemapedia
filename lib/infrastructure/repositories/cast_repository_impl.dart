import 'package:cinemapedia/domain/datasources/cast_datasource.dart';
import 'package:cinemapedia/domain/entities/cast_member.dart';
import 'package:cinemapedia/domain/repositories/cast_repository.dart';

class CastRepositoryImpl extends CastRepository {
  final CastDatasource castDatasource;

  CastRepositoryImpl(this.castDatasource);

  @override
  Future<List<CastMember>> getCastByMovie(String movieId) {
    return castDatasource.getCastByMovie(movieId);
  }
}
