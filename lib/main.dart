import 'package:flutter/material.dart';
import 'package:learn_api/detail_page.dart';
import 'package:learn_api/hiddendrawer.dart';
import 'package:learn_api/myhome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Merriweather'
      ),
      home: const DetailPage(),
    );
  }
}
