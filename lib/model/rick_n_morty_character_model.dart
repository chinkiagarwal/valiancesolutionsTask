
import 'package:flutter/material.dart';


import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'rick_n_morty_character_model.g.dart';

@JsonSerializable(explicitToJson: true)
class RickNMortyCharacterModel {
  RickNMortyCharacterModel();

  @JsonKey(includeIfNull: true)
  late int? id;
  @JsonKey(includeIfNull: true)
  late int? albumId;
  @JsonKey(includeIfNull: true)
  late String? title;
  @JsonKey(includeIfNull: true)
  late String? url;
  @JsonKey(includeIfNull: true)
  late String? thumbnailUrl;


  factory RickNMortyCharacterModel.fromJson(Map<String, dynamic> json) => _$RickNMortyCharacterModelFromJson(json);

  Map<String, dynamic> toJson() => _$RickNMortyCharacterModelToJson(this);
}


