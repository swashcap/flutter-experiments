import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String name;

  DetailsPage({ @required this.name });

  navigateToList(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // This AppBar instance magically has a back button?
      appBar: AppBar(
        title: Text(name),
      ),
      body: Container(
        child: Text('hi'),
      )
    );
  }
}