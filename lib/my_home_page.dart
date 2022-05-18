import 'package:flutter/material.dart';

import 'Screens/appbar_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Training Tools'),
        centerTitle: true,
      ),
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
              onPressed: () {},
              color: Colors.pink,
              child: const Text(
                'Layouts',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
