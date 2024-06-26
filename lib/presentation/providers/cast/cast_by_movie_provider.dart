import 'package:cinemapedia/domain/entities/cast_member.dart';
import 'package:cinemapedia/presentation/providers/cast/cast_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final castByMovieProvider =
    StateNotifierProvider<CastByMovieNotifier, Map<int, List<CastMember>>>((ref) {
  final getCast = ref.watch(castRepositoryProvider).getCastByMovie;

  return CastByMovieNotifier(getCast: getCast);
});

typedef GetCastCallback = Future<List<CastMember>> Function(int movieId);

class CastByMovieNotifier extends StateNotifier<Map<int, List<CastMember>>> {
  final GetCastCallback getCast;
  CastByMovieNotifier({required this.getCast}) : super({});

  Future<void> loadCast(int movieId) async {
    if (state[movieId] != null) return;
    
    final List<CastMember> cast = await getCast(movieId);

    state = {...state, movieId: cast};
  }
}
