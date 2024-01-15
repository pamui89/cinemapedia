import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infraestructure/models/the_movie_db/the_movie_db_movie.dart';

class MovieMapper {
  static Movie theMovieDbToEntity(TheMovieDbMovie themoviedb) => Movie(
      adult: themoviedb.adult,
      backdropPath: (themoviedb.backdropPath != '')
        ? 'https://image.tmdb.org/t/p/w500${themoviedb.backdropPath}'
        : 'https://www.prokerala.com/movies/assets/img/no-poster-available.jpg',
      genreIds: themoviedb.genreIds.map((e) => e.toString()).toList(),
      id: themoviedb.id,
      originalLanguage: themoviedb.originalLanguage,
      originalTitle: themoviedb.originalTitle,
      overview: themoviedb.overview,
      popularity: themoviedb.popularity,
      posterPath: (themoviedb.posterPath != '')
        ? 'https://image.tmdb.org/t/p/w500${themoviedb.posterPath}'
        : 'no-poster',
      releaseDate: themoviedb.releaseDate,
      title: themoviedb.title,
      video: themoviedb.video,
      voteAverage: themoviedb.voteAverage,
      voteCount: themoviedb.voteCount
    );
}
