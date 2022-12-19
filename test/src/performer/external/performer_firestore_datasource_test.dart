import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tota/src/performer/external/performer_firestore_datasource.dart';

void main() {
  test('deve retornar uma lista do objeto Map<dynamic, dynamic>...', () async {
    final firestore = FakeFirebaseFirestore();
    await firestore.collection('performers').add({
      'id': 'cDFM8ikQOcwtEzcZNiT4',
      'name': 'Zé Breguesso',
      'principalPicturePath':
          'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'gallery': [
        'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
        'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
        'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
        'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
        'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
      ],
      'mainGenre': {
        'id': 'aslkdfalfsdj',
        'name': 'Rock',
      },
      'genres': [
        {
          'id': 'aslkdfalfsdj',
          'name': 'Rock',
        },
        {
          'id': 'aslkdasdfsdj',
          'name': 'MPB',
        },
      ],
      'status': 'ativo'
    });

    final datasource = PerformerFirestoreDatasource(firestore);
    final result = await datasource.getAll();

    expect(result, isA<List<Map<dynamic, dynamic>>>());
  });
}
