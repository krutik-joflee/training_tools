// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:training_tools/Screens/cart.dart';

class LayoutsScreen extends StatelessWidget {
  const LayoutsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layouts"),
        centerTitle: true,
        backgroundColor: Colors.pink,
        actions: [
          IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ));
              }),
        ],
      ),
      body: ListView(
        children: [
          Image.network(
              "https://images.unsplash.com/photo-1516368703560-076d597296a9?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Beautiful Roses!!",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Surat,Gujarat"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [Icon(Icons.star), Text('41')],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [Icon(Icons.call), Text('CALL')],
                ),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [Icon(Icons.near_me), Text("ROUTE")],
                ),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [Icon(Icons.share), Text("SHARE")],
                ),
              ],
            ),
          ),
          Text("Rose is a shrub,  "
              "Roses is symbols of love  "
              "Rose is considered as a symbol of balance.")
        ],
      ),
    );
  }
}
