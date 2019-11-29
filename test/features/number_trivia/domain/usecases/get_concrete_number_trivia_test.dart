import 'package:clear_ar/features/home/domain/entities/number_trivia.dart';
import 'package:clear_ar/features/home/domain/repositories/number_trivia_repository.dart';
import 'package:clear_ar/features/home/domain/usecases/get_concrete_number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNumberTriviaRepository extends Mock
    implements NumbertriviaRepository {}

void main() {
  GetConcreteNumberTrivia usecase;
  MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });

  final tNumber = 1; //tets Number
  final tNumberTrivia = NumberTrivia(number: 1, text: "test");

  test(
    'should get trivia for the number from the repository',
    () async {
      //arrange
      when(mockNumberTriviaRepository.getConcreteNumberTrivia(any))
          .thenAnswer((_) async => Right(tNumberTrivia));
      // act
      // final result = await usecase.call(number: tNumber); 
      final result = await usecase(Params(number: tNumber)); //usecase.call() = usecase()
      // assert
      expect(result, right(tNumberTrivia));
      verify(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber));
      verifyNoMoreInteractions(mockNumberTriviaRepository);
    },
  );
}
