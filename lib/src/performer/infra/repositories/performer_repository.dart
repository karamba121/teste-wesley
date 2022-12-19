import 'package:tota/src/performer/domain/entities/performer_entity.dart';
import 'package:tota/src/performer/domain/repositories/performer_repository.dart';
import 'package:tota/src/performer/infra/adapters/json_to_performer.dart';

import '../datasources/performer_datasource.dart';

class PerformerRepository implements IPerformerRepository {
  final IPerformerDatasource datasource;

  PerformerRepository(this.datasource);

  @override
  Future<List<PerformerEntity>> getAll() async{
    final list = await datasource.getAll();

    return _convert(list);
  }

  List<PerformerEntity> _convert(List<Map> list){
    return list.map(JsonToPerformer.fromMap).toList();
  }
}
