import 'dart:ffi';
import 'dart:io' show Platform;

import 'package:flutter_assignment/api/Client.dart';
import 'package:flutter_assignment/model/rick_n_morty_character_model.dart';
import 'package:flutter_assignment/provider/list_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'dart:io';
import 'dart:convert' as JSON;
void main() {
  test('Homelist API', () async {
    final client = new Client();
    final listProvider = new Listprovider(client.init());




    var data = await listProvider.getHomeList(1);
    if (data is List<RickNMortyCharacterModel>) {
      print("data = ${data}");
    //  expect(data, true);
    } else {
      print(data);
    }
  });
}