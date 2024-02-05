import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card List'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text('Card 1'),
              subtitle: Text('This is card 1'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Card 2'),
              subtitle: Text('This is card 2'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Card 3'),
              subtitle: Text('This is card 3'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Card 4'),
              subtitle: Text('This is card 4'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Card 4'),
              subtitle: Text('This is card 5'),
            ),
          ),
        ],
      ),
    );
  }
}
