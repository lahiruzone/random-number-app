
import 'package:clear_ar/core/error/failures.dart';
import 'package:clear_ar/features/home/domain/entities/number_trivia.dart';
import 'package:dartz/dartz.dart';

abstract class NumbertriviaRepository{
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}