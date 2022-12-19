import 'package:mocktail/mocktail.dart';
import 'package:tota/src/performer/domain/entities/performer_entity.dart';
import 'package:tota/src/performer/domain/repositories/performer_repository.dart';
import 'package:tota/src/performer/infra/datasources/performer_datasource.dart';

class PerformersRepositoryMock extends Mock implements IPerformerRepository{}
class PerformerEntityMock extends Mock implements PerformerEntity{}
class PerformerDatasourceMock extends Mock implements IPerformerDatasource {}