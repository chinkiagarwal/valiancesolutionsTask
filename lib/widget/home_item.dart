import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assignment/views/character_detail_screen.dart';
import 'package:flutter_assignment/model/rick_n_morty_character_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';




class HomeItem extends StatefulWidget {
  late RickNMortyCharacterModel homeItem;
  VoidCallback itemPress;

  HomeItem({required this.homeItem, required this.itemPress});

  @override
  _HomeItemState createState() => _HomeItemState();
}

class _HomeItemState extends State<HomeItem> {

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
widget.itemPress();
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => CharacterDetailsWidget(homeItem: widget.,)),
        // )

      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),

        child: Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [

                  Row(
                    children: [

                      Container(child: new Image.network(
                        widget.homeItem.thumbnailUrl!,
                        scale: 1.0,

                      ),height: MediaQuery.of(context).size.height / 9,width: MediaQuery.of(context).size.height / 9,),

                      // Container(child: WebView(initialUrl: "", onWebViewCreated: (WebViewController webViewController) {

              // Image.memory(
              //   ,
              //           height: MediaQuery.of(context).size.height / 9,
              //           width: MediaQuery.of(context).size.height / 9,
              //         ),




Padding(padding: EdgeInsets.all(8.0)),
                      Expanded(
                        child:  Container(

                          child: Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                           Container(child: Text('Title: ${widget.homeItem.title != null ? widget.homeItem.title : ""}')),
                              Padding(padding: EdgeInsets.all(5.0)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [



                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20,top: 0),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'URl: ${widget.homeItem.url != null ? widget.homeItem.url : ""} ',

                                          maxLines: 2,
                                          overflow: TextOverflow. ellipsis,
                                          softWrap: false,
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),


                            ],
                          ),
                        ),
                      )

                    ],
                  ),
                ],
              ),),


            Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Colors.black26,
                )
            ),








          ],
        ),
      ),
    );
    ;
  }

    photoUpload() async {
    final ByteData imageData = await NetworkAssetBundle(Uri.parse("https://via.placeholder.com/150/92c952")).load("");
    final Uint8List bytes = imageData.buffer.asUint8List();
// display it with the Image.memory widget
    Image.memory(bytes,height: MediaQuery.of(context).size.height / 9, width: MediaQuery.of(context).size.height / 9,);

  }




}
