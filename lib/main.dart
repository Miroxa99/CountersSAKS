import 'package:countersapp/Pages/Houses/TestList.dart';
import 'package:flutter/material.dart';

import 'Pages/HomePage.dart';
import 'Pages/Houses/Gorbatova47.dart';
import 'Pages/Houses/Sovetskaya49.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage2(),
      '/Sov49_1': (context) => Sovetskaya49_1(),
      '/Gorb47': (context) => Gorbatova47(),
      '/Test': (context) => HomePage2(),
    },
    debugShowCheckedModeBanner: false,
    title: 'Счетчики САКС',
  ));
}
