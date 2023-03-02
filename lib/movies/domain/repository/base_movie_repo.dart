import 'package:dartz/dartz.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/domain/entities/movie_detail.dart';

import '../../../core/error/failure.dart';
import '../entities/recommendation.dart';

abstract class BaseMoviesRepo {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTopRateMovies();
  Future<Either<Failure, List<Recommendation>>> getRecommendation(int movieId);
  Future<Either<Failure, MovieDetail>> getMovieDetails(int movieId);
}
