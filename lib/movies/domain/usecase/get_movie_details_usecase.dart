import 'package:dartz/dartz.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/domain/entities/movie_detail.dart';

import '../repository/base_movie_repo.dart';

class GetMovieDetailsUseCase extends BaseUseCase<int, MovieDetail> {
  final BaseMoviesRepo baseMoviesRepo;
  GetMovieDetailsUseCase(this.baseMoviesRepo);

  @override
  Future<Either<Failure, MovieDetail>> call(int input) async {
    return await baseMoviesRepo.getMovieDetails(input);
  }
}
