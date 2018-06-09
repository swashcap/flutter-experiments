import 'package:flutter/material.dart';

import './putter.dart';

class DetailsPage extends StatelessWidget {
  final Putter item;

  DetailsPage({ @required this.item });

  navigateToList(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // This AppBar instance magically has a back button?
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Container(
        child: Text('hi'),
      )
    );
  }
}