// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:training_tools/Screens/listview_builder.dart';

// ignore: camel_case_types
class listviewscreen extends StatelessWidget {
  const listviewscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List view"),
        centerTitle: true,
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ListviewBuilderscreen()));
              },
              icon: Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            CircleAvatar(
              maxRadius: 50,
              backgroundColor: Colors.purple,
              child: const Icon(
                Icons.person,
                color: Colors.white,
                size: 50,
              ),
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Center(
                // ignore: prefer_const_constructors
                child: Text(
                  "Krutik J Shiroya",
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            // ignore: prefer_const_constructors
            Text(
                "My Name Is Krutik Shiroya , Hey, this is my homepage, so I have to say something about myself , Sometimes it is hard to introduce yourself because you know yourself so well that you do not know where to start with. Let me give a try to see what kind of image you have about me through my self-description , I hope that my impression about myself and your impression about me are not so different ,  am a person who is positive about every aspect of life , There are many things I like to do, to see, and to experience , I like to think, I like to dream; I like to talk, I like to listen. I like to see the sunrise in the morning, I like to see the moonlight at night , always wanted to be a great writer, like Victor Hugo who wrote Les Miserable, or like Roman Roland who wrote John Christopher , Sometimes it is hard to introduce yourself because you know yourself so well that you do not know where to start with. Let me give a try to see what kind of image you have about me through my self-descriptio , Sometimes it is hard to introduce yourself because you know yourself so well that you do not know where to start with. Let me give a try to see what kind of image you have about me through my self-descriptio , Sometimes it is hard to introduce yourself because you know yourself so well that you do not know where to start with. Let me give a try to see what kind of image you have about me through my self-descriptio , Sometimes it is hard to introduce yourself because you know yourself so well that you do not know where to start with. Let me give a try to see what kind of image you have about me through my self-descriptio , Sometimes it is hard to introduce yourself because you know yourself so well that you do not know where to start with. Let me give a try to see what kind of image you have about me through my self-descriptio"),
          ],
        ),
      ),
    );
  }
}
