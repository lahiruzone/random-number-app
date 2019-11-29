import 'package:clear_ar/core/error/failures.dart';
import 'package:clear_ar/core/usecases/usecase.dart';
import 'package:clear_ar/features/home/domain/entities/number_trivia.dart';
import 'package:clear_ar/features/home/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, Params> {
  final NumbertriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  Params({@required this.number}) : super();

  @override
  // TODO: implement props
  List<Object> get props => null;
}
