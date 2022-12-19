import 'package:tota/src/performer/domain/entities/performer_entity.dart';

abstract class IPerformerRepository{
  Future<List<PerformerEntity>> getAll();
}