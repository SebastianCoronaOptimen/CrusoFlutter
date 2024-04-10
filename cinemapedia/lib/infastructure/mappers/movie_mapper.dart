import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infastructure/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDbToEntity(MovieMovieDB moviedb) => Movie(
      adult: moviedb.adult,
      backdropPath: (moviedb.backdropPath != '') 
      ? 'https://image.tmdb.org/t/p/w500/${moviedb.backdropPath}'
      :'https://c.tenor.com/IHdlTRsmcS4AAAAC/404.gif',
      genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
      id: moviedb.id,
      originalLanguage: moviedb.originalLanguage,
      originalTitle: moviedb.originalTitle,
      overview: moviedb.overview,
      popularity: moviedb.popularity,
      posterPath: (moviedb.posterPath != '')
      ? 'https://image.tmdb.org/t/p/w500/${moviedb.posterPath}'
      : 'no-poster',
      releaseDate: moviedb.releaseDate,
      title: moviedb.title,
      video: moviedb.video,
      voteAverage: moviedb.voteAverage,
      voteCount: moviedb.voteCount
      );

    static Movie movieDetailsToEntity(MovieDetails moviedb) => Movie(
      adult: moviedb.adult,
      backdropPath: (moviedb.backdropPath != '') 
      ? 'https://image.tmdb.org/t/p/w500/${moviedb.backdropPath}'
      :'https://c.tenor.com/IHdlTRsmcS4AAAAC/404.gif',
      genreIds: moviedb.genres.map((e) => e.name).toList(),
      id: moviedb.id,
      originalLanguage: moviedb.originalLanguage,
      originalTitle: moviedb.originalTitle,
      overview: moviedb.overview,
      popularity: moviedb.popularity,
      posterPath: (moviedb.posterPath != '')
      ? 'https://image.tmdb.org/t/p/w500/${moviedb.posterPath}'
      : 'https://c.tenor.com/IHdlTRsmcS4AAAAC/404.gif',
      releaseDate: moviedb.releaseDate,
      title: moviedb.title,
      video: moviedb.video,
      voteAverage: moviedb.voteAverage,
      voteCount: moviedb.voteCount
    );
}
