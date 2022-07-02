import 'package:flutter/material.dart';

import 'Houses/Sovetskaya49.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Выберите дом'),
        ),
        body: ListView(
          children: [
            OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Sov49_1');
                },
                child: Text('Советская 49/1')),
            OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Gorb47');
                },
                child: Text('Горбатова 47')),
            OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Test');
                },
                child: Text('Тестовая страница'))
          ],
        ),
      ),
    );
  }
}
