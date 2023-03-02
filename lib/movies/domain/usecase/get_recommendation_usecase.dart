import 'package:dartz/dartz.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/domain/entities/recommendation.dart';

import '../repository/base_movie_repo.dart';

class GetRecommendationUseCase extends BaseUseCase<int, List<Recommendation>> {
  final BaseMoviesRepo baseMoviesRepo;
  GetRecommendationUseCase(this.baseMoviesRepo);

  @override
  Future<Either<Failure, List<Recommendation>>> call(int input) async {
    return await baseMoviesRepo.getRecommendation(input);
  }
}
