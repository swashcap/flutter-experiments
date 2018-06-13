import 'package:flutter/material.dart';
import 'package:carousel/carousel.dart';

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
      body: ListView(
        children: [
          new SizedBox(
            height: 240.0,
            child: Carousel(
              children: [
                NetworkImage('https://i5.walmartimages.com/asr/07bfd7d2-c97c-4176-bbf1-a70f0cf86fc2_1.75a0bcf84f702505bd1e49502ccb89c8.jpeg?odnHeight=240&odnWidth=420&odnBg=FFFFFF'),
                NetworkImage('https://i5.walmartimages.com/asr/c942d8e2-1463-46f0-9561-65c0a65876cc_1.84c955e7f91e2e67eab5bc218988a817.png?odnHeight=240&odnWidth=420&odnBg=FFFFFF'),
                NetworkImage('https://i5.walmartimages.com/asr/723835e8-486b-41d0-a1d7-1022ad9d8bec_1.faded043c03ad700995d9a08eb762933.jpeg?odnHeight=240&odnWidth=420&odnBg=FFFFFF'),
                NetworkImage('https://i5.walmartimages.com/asr/c344b4ef-8d40-453d-aa11-4e8cbb05284c_1.86a7de878aa7c46b7e587799e9a252fe.jpeg?odnHeight=240&odnWidth=420&odnBg=FFFFFF'),
              ].map((netImage) => Image(image: netImage)).toList(),
              displayDuration: Duration(days: 1),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              children: [
                Flexible(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 16.0),
                        child: Text(
                          item.name,
                          style: TextStyle(
                            fontSize: 32.0
                          )
                        ),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                        style: TextStyle(
                          fontSize: 20.0,
                          height: 1.2,
                        )
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  )
                )
              ]
            ),
          ),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Add',
      ),
    );
  }
}