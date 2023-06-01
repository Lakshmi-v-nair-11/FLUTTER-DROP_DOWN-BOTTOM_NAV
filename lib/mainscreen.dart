import 'package:flutter/material.dart';

class ScreenMain extends StatelessWidget {
  ScreenMain({super.key});

  final _list = [
    'apple',
    'orange',
    'grapes',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: DropdownButtonFormField(
            hint: Text('Select a fruit.'),
            onChanged: (value) {
              print(value);
            },
            items: _list.map((e) {
              return DropdownMenuItem(
                value: e,
                child: Text(e),
              );
            }).toList()),
      ),
    );
  }
}
