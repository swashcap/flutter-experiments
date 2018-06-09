import 'package:flutter/material.dart';

import './details_page.dart';
import './item_widget.dart';

class ListPage extends StatelessWidget {
  final List<String> items;

  ListPage({ @required this.items });

  void navigateToDetails(BuildContext context, String name) {
    Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (ctx) => DetailsPage(name: name)
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Putter')
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          var name = '${items[index]}';
          return ItemWidget(
            imageUrl: 'https://ll-us-i5.wal.co/asr/07bfd7d2-c97c-4176-bbf1-a70f0cf86fc2_1.75a0bcf84f702505bd1e49502ccb89c8.jpeg?odnWidth=200&amp;odnHeight=200&amp;odnBg=ffffff',
            name: name,
            onTap: () => this.navigateToDetails(
              context,
              name,
            ),
          );
        },
        itemCount: items.length,
      )
    );
  }
}
