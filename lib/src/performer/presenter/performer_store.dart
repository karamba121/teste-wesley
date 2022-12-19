import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:tota/src/performer/domain/entities/performer_entity.dart';
import 'package:tota/src/performer/domain/usecases/get_all_performers.dart';

class PerformerStore extends NotifierStore<Exception, List<PerformerEntity>>{
  PerformerStore() : super([]);

  final IGetAllPerformers usecase = Modular.get<IGetAllPerformers>();

  Future<void> getAllPerformers() async {
    execute(() => usecase());
  }
}