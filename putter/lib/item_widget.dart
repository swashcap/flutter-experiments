import 'package:flutter/material.dart';

import './putter.dart';

class ItemWidget extends StatelessWidget {
  final Putter item;
  final Function onTap;

  ItemWidget({
    @required this.item,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: this.onTap,
        child: Column(
          children: [
            Image.network(
              item.thumbnailUrl,
              height: 100.0,
              fit: BoxFit.cover,
            ),
            Padding(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  Text(
                    '\$${item.price.toString()}',
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16.0
                    )
                  )
                ]
              ),
              padding: EdgeInsets.all(16.0),
            ),
          ]
        )
      )
    );
  }
}