// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'comments_model.dart';

class testnetworking extends StatefulWidget {
  const testnetworking({Key? key}) : super(key: key);

  @override
  State<testnetworking> createState() => _testnetworkingState();
}

class _testnetworkingState extends State<testnetworking> {
  Future<List<UserModel>> getCommentsData() async {
    var response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
    List<UserModel> listOfComments = userModelFromJson(response.body);
    return listOfComments;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Networking"),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),
        body: Card(
            child: FutureBuilder(
                future: getCommentsData(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<UserModel>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: const CircularProgressIndicator(),
                    );
                  } else {
                    return ListView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context, i) {
                          return ListTile(
                            onTap: () {},
                            title: Text(snapshot.data![i].name ?? ''),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(snapshot.data![i].id.toString()),
                                Text(snapshot.data![i].postId.toString()),
                                Text(snapshot.data![i].email ?? ''),
                                Text(snapshot.data![i].body ?? ''),
                              ],
                            ),
                          );
                        });
                  }
                })));
  }
}
