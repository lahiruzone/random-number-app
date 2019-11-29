import 'package:clear_ar/core/usecases/usecase.dart';
import 'package:clear_ar/features/home/domain/entities/number_trivia.dart';
import 'package:clear_ar/features/home/domain/repositories/number_trivia_repository.dart';
import 'package:clear_ar/features/home/domain/usecases/get_concrete_number_trivia.dart';
import 'package:clear_ar/features/home/domain/usecases/get_random_number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNumberTriviaRepository extends Mock
    implements NumbertriviaRepository {}

void main() {
  GetRandomNumberTrivia usecase;
  MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetRandomNumberTrivia(mockNumberTriviaRepository);
  });

  final tNumberTrivia = NumberTrivia(number: 1, text: "test");

  test('should get trivia from the repository', () async {
    when(mockNumberTriviaRepository.getRandomNumberTrivia())
        .thenAnswer((_) async => Right(tNumberTrivia));

    final result = await usecase(NoParams());

    
  });
}
