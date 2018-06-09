import 'package:flutter/material.dart';

import './details_page.dart';
import './item_widget.dart';
import './putter.dart';

class ListPage extends StatelessWidget {
  final List<Putter> items;

  ListPage({ @required this.items });

  void navigateToDetails(BuildContext context, Putter item) {
    Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (ctx) => DetailsPage(item: item)
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
          var children = [
            Expanded(
              child:  ItemWidget(
                item: items[index],
                onTap: () => this.navigateToDetails(
                  context,
                  items[index].name,
                ),
              ),
            ),
          ];

          if (index + 1 <= items.length - 1) {
            children.add(Expanded(
              child: ItemWidget(
                item: items[index + 1],
                onTap: () => this.navigateToDetails(
                  context,
                  items[index + 1].name
                ),
              )
            ));
          }

          return Row(
            children: children,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          );
        },
        itemCount: (items.length / 2).ceil(),
      )
    );
  }
}
