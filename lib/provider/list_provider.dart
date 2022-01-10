import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_assignment/api/WebServices.dart';
import 'package:flutter_assignment/common/logger.dart';
import 'package:flutter_assignment/model/rick_n_morty_character_model.dart';
import 'package:json_annotation/json_annotation.dart';



class Listprovider {
  Dio _client;

  Listprovider(this._client);



  Future<dynamic> getHomeList(int page) async {
    try {



      final queryParameters = {
        'page': '$page',

      };


      final headers = {HttpHeaders.contentTypeHeader: 'application/json'};
      var response = await _client.request('$home_endpoint',
          queryParameters: queryParameters,
          options: Options(method: "get", contentType: 'application/json',headers: headers));

      print(response.toString());

      List<RickNMortyCharacterModel> dataList = [];
      if(response.data != null){
        for(var item in response.data){
         dataList.add(RickNMortyCharacterModel.fromJson(item));
        }
      }


       print(dataList);
      print('home list api');

      return dataList;
    } on DioError catch (ex) {
      Logger.logError(ex);
      print(ex.message);
    }
  }

}