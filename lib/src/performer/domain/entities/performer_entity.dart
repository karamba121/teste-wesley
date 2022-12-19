import 'package:tota/src/performer/domain/value_objects/genre.dart';

class PerformerEntity {
  final String id;
  final String name;
  final String principalPicturePath;
  final List<String> gallery;
  final Genre mainGenre;
  final List<Genre> genres;
  final PerformerStatus status;

  PerformerEntity({
    required this.id,
    required this.name,
    required this.principalPicturePath,
    required this.gallery,
    required this.mainGenre,
    this.genres = const [],
    this.status = PerformerStatus.ativo,
  });
}

enum PerformerStatus {
  inativo,
  ativo,
}
