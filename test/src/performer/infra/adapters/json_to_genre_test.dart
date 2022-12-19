import 'package:flutter_test/flutter_test.dart';
import 'package:tota/src/performer/domain/value_objects/genre.dart';
import 'package:tota/src/performer/infra/adapters/json_to_genre.dart';

void main() {
  test('deve converter um Map em um objeto do tipo Genre...', () {
    final genre = JsonToGenre.fromMap({
      'id': 'alsdkfjaldkjf',
      'name': 'Rock',
    });

    expect(genre, isA<Genre>());
  });
}
