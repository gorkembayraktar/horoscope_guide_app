import 'package:burc_rehberi/burc_listesi.dart';
import 'package:burc_rehberi/data/strings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.APP_NAME,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: BurcListesi(),
    );
  }
}
