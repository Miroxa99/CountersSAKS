import 'dart:html';

import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  bool MyReverse = false;
  int ItemCount = 262;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Советкая 49/1')),
        body: Container(
            child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            (Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: ItemCount,
                      itemBuilder: (BuildContext context, int index) => Card(
                              child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                      '${MyReverse == false ? 1 + index : ItemCount - index}')),
                              Expanded(child: Card(child: TextField())),
                              Expanded(child: Card(child: TextField()))
                            ],
                          )))),
            ])),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    MyReverse == false ? MyReverse = true : MyReverse = false;
                  });
                },
                child: Icon(Icons.import_export_sharp,
                    semanticLabel: 'Сверхну-вниз', size: 65)),
          ],
        )));
  }
}
