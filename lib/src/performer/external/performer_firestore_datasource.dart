import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tota/src/performer/infra/datasources/performer_datasource.dart';

class PerformerFirestoreDatasource implements IPerformerDatasource {
  final FirebaseFirestore firestore;

  PerformerFirestoreDatasource(this.firestore);

  @override
  Future<List<Map>> getAll() async {
    final result = await firestore.collection('performers').get();

    final list = <Map<dynamic, dynamic>>[];

    for (var element in result.docs) {
      list.add({
        'id': element.id,
        ...element.data(),
      });
    }

    return list;
  }
}
