// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:training_tools/Screens/form.dart';
import 'package:training_tools/Screens/grid_screen.dart';
import 'package:training_tools/Screens/layouts_screen.dart';
import 'package:training_tools/Screens/listview_screen.dart';
import 'package:training_tools/Screens/test_2_networking.dart';
import 'package:training_tools/Screens/test_networking.dart';

import 'Screens/appbar_screen.dart';
import 'Screens/networking.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Training Tools'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
        child: ListView(
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AppbarScreen(),
                    ));
              },
              color: Colors.blue,
              child: const Text(
                'Appbar & Drawer',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LayoutsScreen(),
                    ));
              },
              color: Colors.pink,
              child: const Text(
                'Layouts',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FormScreen(),
                    ));
              },
              color: Colors.green,
              child: const Text(
                'FORM',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // ignore: duplicate_ignore
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const gridscreen()));
              },
              color: Colors.orange[400],
              // ignore: prefer_const_constructors
              child: Text(
                "Grid View",
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const listviewscreen(),
                    ));
              },
              color: Colors.purple,
              child: Text(
                "List View",
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const networkingscreen()));
              },
              color: Colors.grey[700],
              child: Text(
                "Networking",
                style: const TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => testnetworking()));
              },
              color: Colors.brown,
              child: Text(
                "Test Networking",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => test2networking()));
              },
              color: Colors.red[400],
              child: Text(
                "Test 2 Networking",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
