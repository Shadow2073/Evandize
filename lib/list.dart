import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<String> cards = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Events', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
            child: Text(
              "All pages are lists and will be updated with api data, just need to duplicate the list page and change the api call",
              style: TextStyle(color: Colors.amber),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cards.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.yellow,
                  child: ListTile(
                    title: Column(
                      children: [
                        Text('Event ${index + 1}'),
                        Text('Event and info goes here when api'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
        mainAxisSize: MainAxisSize.min,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cards.add('New Card');
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
