import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tota/src/performer/domain/usecases/get_all_performers.dart';

import '../../../../mocks/mocks.dart';

void main() {
  test('deve retornar uma lista do obejto PerformerEntity...',() async {
    final repository = PerformersRepositoryMock();
    final entity = PerformerEntityMock();

    when(() => repository.getAll()).thenAnswer((_) => Future.value([entity]));

    final usecase = GetAllPerformers(repository);
    final result = await usecase();

    expect(result.length, 1);
    expect(result.first, entity);
  });
}