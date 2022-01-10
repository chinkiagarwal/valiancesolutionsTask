import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_assignment/api/Client.dart';
import 'package:flutter_assignment/model/rick_n_morty_character_model.dart';
import 'package:flutter_assignment/provider/list_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeListNotifier extends ChangeNotifier {

  List<RickNMortyCharacterModel?>? homeList = [];

  late String message ;
  bool isLoading = true;




  void getHomeList({page, callback}) async {
    print("get post job list");
    homeList = [];
    try {
      final client = new Client();
      final listProvider = new Listprovider(client.init());
      //List<JobModel> list = [];
      String err;
      var data = await listProvider.getHomeList(page);
      print("inside homelist = $data");
      if(data is List<RickNMortyCharacterModel>){
        if(data.isEmpty){
          print("inside empty data ");
          homeList = [];
        }else{
          print("data = ${data[0]}");
          //  list = data.data! as List<JobModel>;
          homeList = [];

          homeList = data ;
        }

      }else{
        homeList = [];
        print(data);
        //  err = data[""]
      }


      isLoading = false;
      message = "";
      callback(true);
      notifyListeners();

    } catch (err) {
      isLoading = false;
      print("inside error $err");
      callback(true);

      message =
          "There is an issue with the app during request the data, please contact admin for fixing the issues " +
              err.toString();
      notifyListeners();
    }
  }




}


