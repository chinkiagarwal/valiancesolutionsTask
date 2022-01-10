// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rick_n_morty_character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RickNMortyCharacterModel _$RickNMortyCharacterModelFromJson(
    Map<String, dynamic> json) {
  return RickNMortyCharacterModel()
    ..id = json['id'] as int?
    ..albumId = json['albumId'] as int?
    ..title = json['title'] as String?
    ..url = json['url'] as String?
    ..thumbnailUrl = json['thumbnailUrl'] as String?;
}

Map<String, dynamic> _$RickNMortyCharacterModelToJson(
        RickNMortyCharacterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'albumId': instance.albumId,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
