import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  final Function onTap;

  ItemWidget({
    @required this.name,
    @required this.imageUrl,
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
              imageUrl,
              height: 100.0,
              fit: BoxFit.cover,
            ),
            Padding(
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )
              ),
              padding: EdgeInsets.all(16.0),
            ),
          ]
        )
      )
    );
  }
}