import 'package:cinemapedia/domain/entities/cast_member.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_credits.dart';

class CastMemberMapper {
  static CastMember castToEntity(Cast cast) => CastMember(
    id: cast.id, 
    name: cast.name, 
    profilePath: cast.profilePath != null 
      ? 'https://image.tmdb.org/t/p/w500${cast.profilePath}' 
      : 'https://vectorified.com/images/no-profile-picture-icon-10.jpg', 
    character: cast.character
  );
}