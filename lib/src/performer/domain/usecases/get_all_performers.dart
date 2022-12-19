import 'package:tota/src/performer/domain/entities/performer_entity.dart';

import '../repositories/performer_repository.dart';

abstract class IGetAllPerformers{
  Future<List<PerformerEntity>> call();
}

class GetAllPerformers implements IGetAllPerformers{
  final IPerformerRepository repository;

  GetAllPerformers(this.repository);

  @override
  Future<List<PerformerEntity>> call() async {
    return await repository.getAll();
  }
}