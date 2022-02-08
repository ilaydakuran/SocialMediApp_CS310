import 'package:flutter/material.dart';

class ChipView extends StatelessWidget {
  const ChipView({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(children: [
          Chip(label: Text('I')),
          Chip(label: Text('really')),
          Chip(label: Text('really')),
          Chip(label: Text('really')),
          Chip(label: Text('really')),
          Chip(label: Text('really')),
          Chip(label: Text('really')),
          Chip(label: Text('need')),
          Chip(label: Text('a')),
          Chip(label: Text('good')),
          Chip(label: Text('grade')),
        ]),
      ),
    );
  }
}