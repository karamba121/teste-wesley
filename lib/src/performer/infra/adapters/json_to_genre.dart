import 'package:tota/src/performer/domain/value_objects/genre.dart';

class JsonToGenre {
  static Genre fromMap(dynamic json) {
    return Genre(
      id: json['id'],
      name: json['name'],
    );
  }
}
