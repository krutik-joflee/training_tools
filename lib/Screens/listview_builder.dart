import 'package:flutter/material.dart';

import 'ListView_separated.dart';

class ListviewBuilderscreen extends StatelessWidget {
  const ListviewBuilderscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Builder"),
        centerTitle: true,
        backgroundColor: Colors.purple[400],
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListViewseparated()));
              },
              icon: Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, position) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                position.toString(),
                style: TextStyle(fontSize: 20),
              ),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
