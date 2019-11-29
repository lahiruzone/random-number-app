
import 'package:clear_ar/core/error/failures.dart';
import 'package:clear_ar/core/usecases/usecase.dart';
import 'package:clear_ar/features/home/domain/entities/number_trivia.dart';
import 'package:clear_ar/features/home/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams>{
  
  final NumbertriviaRepository repository;

  GetRandomNumberTrivia(this.repository); 
  
  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }

}
 
