import 'package:flutter/material.dart';

import './details_page.dart';
import './item_widget.dart';
import './putter.dart';

class ListPage extends StatefulWidget {
  ListPage({ Key key, @required this.items }) : super(key:key);

  final List<Putter> items;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  int count = 0;

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
        title: Text('Putter'),
        actions: [
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 80.0,
                ),
                Row(
                  children: [
                    Icon(Icons.shopping_cart),
                    SizedBox(width: 10.0),
                    Text(
                      '$count',
                      style: TextStyle(fontWeight: FontWeight.bold)
                    ),
                  ]
                )
              ]
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          var i = index * 2;
          var children = [
            Expanded(
              child:  ItemWidget(
                item: this.widget.items[i],
                onTap: () => this.navigateToDetails(
                  context,
                  this.widget.items[i],
                ),
              ),
            ),
          ];

          if (i + 1 <= this.widget.items.length - 1) {
            children.add(Expanded(
              child: ItemWidget(
                item: this.widget.items[i + 1],
                onTap: () => this.navigateToDetails(
                  context,
                  this.widget.items[i + 1]
                ),
              )
            ));
          }

          return Row(
            children: children,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          );
        },
        itemCount: (this.widget.items.length / 2).ceil(),
      )
    );
  }
}
