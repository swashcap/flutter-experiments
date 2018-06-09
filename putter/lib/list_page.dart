import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  final List<String> items;

  ListPage({ @required this.items });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Putter')
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        },
        itemCount: items.length,
      )
    );
  }
}
