import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:training_tools/Screens/user_model.dart';

class networkingscreen extends StatefulWidget {
  const networkingscreen({Key? key}) : super(key: key);

  @override
  State<networkingscreen> createState() => _networkingscreenState();
}

class _networkingscreenState extends State<networkingscreen> {
  Future<List<UserModel>> getUserData() async {
    var response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    List<UserModel> listOfUsers = userModelFromJson(response.body);
    return listOfUsers;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Networking"),
          centerTitle: true,
          backgroundColor: Colors.grey[600],
        ),
        body: Container(
          child: Card(
            child: FutureBuilder<List<UserModel>>(
              future: getUserData(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<UserModel>> snapshot) {
                if (snapshot.data == null) {
                  return Container(
                    child: Center(
                      child: Text("Loading..."),
                    ),
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
                              Text(snapshot.data![i].email ?? ''),
                              Text(snapshot.data![i].phone ?? ''),
                            ],
                          ),
                        );
                      });
                }
              },
            ),
          ),
        ));
  }
}
