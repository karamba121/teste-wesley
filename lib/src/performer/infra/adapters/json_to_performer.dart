import 'package:tota/src/performer/domain/entities/performer_entity.dart';
import 'package:tota/src/performer/infra/adapters/json_to_genre.dart';

class JsonToPerformer {
  static PerformerEntity fromMap(dynamic json) {
    return PerformerEntity(
      id: json['id'],
      name: json['name'],
      principalPicturePath: json['principalPicturePath'],
      gallery: List<String>.from(json['gallery']),
      mainGenre: JsonToGenre.fromMap(json['mainGenre']),
      genres: [
        if (json.containsKey('genres'))
          ...(json['genres'] as List).map(JsonToGenre.fromMap).toList()
      ],
      status: PerformerStatus.values
          .firstWhere((item) => item.name == json['status']),
    );
  }
}
