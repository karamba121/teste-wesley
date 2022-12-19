import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tota/src/performer/domain/repositories/performer_repository.dart';
import 'package:tota/src/performer/domain/usecases/get_all_performers.dart';
import 'package:tota/src/performer/external/performer_firestore_datasource.dart';
import 'package:tota/src/performer/infra/datasources/performer_datasource.dart';
import 'package:tota/src/performer/infra/repositories/performer_repository.dart';
import 'package:tota/src/performer/presenter/performer_store.dart';

import 'performer_page.dart';

class PerformerModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.singleton((i) => FirebaseFirestore.instance),
    Bind.singleton<IPerformerDatasource>((i) => PerformerFirestoreDatasource(i())),
    Bind.singleton<IPerformerRepository>((i) => PerformerRepository(i())),
    Bind.singleton<IGetAllPerformers>((i) => GetAllPerformers(i())),
    Bind.factory((i) => PerformerStore())
  ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const PerformerPage()),
      ];
}
