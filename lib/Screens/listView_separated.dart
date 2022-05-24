// ignore_for_file: prefer_const_constructors, sort_child_properties_last, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:training_tools/my_home_page.dart';

class ListViewseparated extends StatelessWidget {
  const ListViewseparated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView separated"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: ListView.separated(
        itemBuilder: (context, position) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("List Item $position"),
            ),
          );
        },
        separatorBuilder: (context, Position) {
          return Card(
            color: Colors.blueGrey,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Seprator $Position",
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
        itemCount: 20,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        backgroundColor: Colors.purple,
        onPressed: () {
          Navigator.pop(
              context, MaterialPageRoute(builder: (context) => MyHomePage()));
        },
      ),
    );
  }
}
