// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CartScreen extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int value1 = 1;
  int value2 = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Add To Cart",
          ),
          centerTitle: true,
          backgroundColor: Colors.pink[300],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        // ignore: prefer_const_constructors
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            // ignore: prefer_const_constructors
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1635253717779-2d603475d753?ixlib=rb-1.2.1&raw_url=true&q=80&fm=jpg&crop=entropy&cs=tinysrgb&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=635"))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Pich Rose",
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      // ignore: prefer_const_constructors
                      Text(
                        "5 Peaces",
                        style: const TextStyle(fontSize: 12),
                      ),
                      Icon(Icons.favorite)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  // ignore: duplicate_ignore
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables, prefer_const_constructors
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              value1++;
                            });
                          },
                          child: Icon(Icons.add)),
                      Text("$value1"),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              value1--;
                            });
                          },
                          child: Icon(Icons.remove))
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "\$${value1 * 25}",
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Save For Later",
                      style: const TextStyle(fontSize: 10),
                    ),
                    Text(
                      "Remove All!",
                      style: const TextStyle(fontSize: 10),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(11.0),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          // ignore: prefer_const_constructors
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              // ignore: prefer_const_constructors
                              image: NetworkImage(
                                  "https://images.unsplash.com/photo-1495231916356-a86217efff12?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=736"))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "white Rose",
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      // ignore: prefer_const_constructors
                      Text(
                        "1 Peaces",
                        style: const TextStyle(fontSize: 12),
                      ),
                      Icon(Icons.favorite)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  // ignore: duplicate_ignore
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables, prefer_const_constructors
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              value2++;
                            });
                          },
                          child: Icon(Icons.add)),
                      Text("$value2"),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              value2--;
                            });
                          },
                          child: Icon(Icons.remove))
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "\$${value2 * 50}",
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Save For Later",
                      style: const TextStyle(fontSize: 10),
                    ),
                    Text(
                      "Remove All!",
                      style: const TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, left: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          'Total Items : ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text("${value1 + value2}",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          'Total Amount : ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text("\$ ${(value1 * 25) + (value2 * 50)}",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
