import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Московский мк-н д. 29'),
        ),
        body: Row(
          children: [Expanded(child: CountList())],
        ));
  }
}

class CountList extends StatefulWidget {
  @override
  _CountListState createState() => _CountListState();
}

class _CountListState extends State<CountList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
                reverse: false,
                itemCount: 262,
                itemBuilder: (BuildContext context, var index) {
                  return ListTile(
                    title: Text("${index + 1}"),
                  );
                })),
        // ReverseButton()
        ElevatedButton(child: Text('Развернуть'), onPressed: () {})
      ],
    );
  }
}

// Widget ReverseButton() {
//   return Container(
//     child: ElevatedButton(child: Text('Развернуть'), onPressed: () {}),
//   );
// }
