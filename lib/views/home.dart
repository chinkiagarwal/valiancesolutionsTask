import 'package:flutter/material.dart';
import 'package:flutter_assignment/views/character_detail_screen.dart';
import 'package:flutter_assignment/notifer_classes/home_list_notifier.dart';
import 'package:flutter_assignment/provider/list_provider.dart';
import 'package:flutter_assignment/widget/home_item.dart';

import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dart:convert' as JSON;
class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int page = 0;
  bool isEnd = false;
  late RefreshController _refreshController;
  Future<void> loadMoreData() async {
    int page = 0;
    bool isEnd = false;
    print("loadMore Called");
    page = 1;

    final homeModel = Provider.of<HomeListNotifier>(context, listen: false);
    homeModel.getHomeList(
        page: 1,
        callback: (isEnd) {
          setState(() {});
        });
  }

  @override
  void initState() {
    // TODO: implement initState
    loadMoreData();
    super.initState();
    _refreshController = RefreshController(initialRefresh: true);

  }
  @override
  Widget build(BuildContext context) {
    final jobModel = Provider.of<HomeListNotifier>(context);

    return   ListenableProvider.value(
      value: jobModel,
      child: Consumer<HomeListNotifier>(
        builder: (context, value, child) {
          if (value.isLoading) {
            return Center(
              child: SizedBox(
                height: 35,
                width: 35,
                child: new CircularProgressIndicator(backgroundColor: Colors.black,),
              ),
            );


          }
          if(value.homeList != null){
            if(value.homeList!.isEmpty){
              return  Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text("No List to display",
                      style: TextStyle(
                          fontSize: 16, color: Colors.black),
                      textAlign: TextAlign.center),
                ),);
            }
          }else{
            //value.history = [];
            //loadMoreStores();
            value.isLoading = true;
            return Center(
              child: SizedBox(
                height: 35,
                width: 35,
                child: new CircularProgressIndicator(backgroundColor: Colors.black,),
              ),
            );

          }
          return  Container(
            padding: const EdgeInsets.only(top: 10),

            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[

                  Padding(padding: EdgeInsets.all(8.0)),

                  for (var item in value.homeList!) HomeItem(homeItem: item!,itemPress: (){

                  },),
                ],
              ),
            ),
          );
        },
      ),
    )
    ;
  }
}






