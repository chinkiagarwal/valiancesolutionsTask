import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_assignment/views/home.dart';
import 'package:flutter_assignment/model/rick_n_morty_character_model.dart';
import 'package:flutter_assignment/notifer_classes/home_list_notifier.dart';

import 'package:provider/provider.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => HomeListNotifier()),

    ],
    child: new MaterialApp(
      title: "",
      debugShowCheckedModeBanner: false,
      home: new MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // required this widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MyHomPage();
  }
}

class MyHomPage extends StatefulWidget {
  const MyHomPage({Key? key}) : super(key: key);

  @override
  _MyHomPageState createState() => _MyHomPageState();
}

class _MyHomPageState extends State<MyHomPage> {
  @override
  void initState() {
    super.initState();


  }



  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rick n Morty'),
          backgroundColor: Colors.black,
        ),
        body: HomeScreen(),
        //MainHomeScreen()
        //
      ),
    );
  }


}




