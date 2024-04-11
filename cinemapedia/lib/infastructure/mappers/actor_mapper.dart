
import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infastructure/models/moviedb/credits_response.dart';

class ActorMapper{
  static Actor castToEntity(Cast cast)=>
    Actor(
      id: cast.id, 
      name: cast.name, 
      profilePath: cast.profilePath != null
      ? 'https://image.tmdb.org/t/p/w500/${cast.profilePath}'
      : 'https://th.bing.com/th/id/OIP.YEzugkVUTBgitcngWlF-zQHaHa?rs=1&pid=ImgDetMain',
      character: cast.character
      );
}