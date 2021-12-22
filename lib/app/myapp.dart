import 'package:flutter/material.dart';
import 'package:pokedex/app/home/page/home_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pokedex',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
