import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:training_tools/Screens/todos_model.dart';

class test2networking extends StatefulWidget {
  const test2networking({Key? key}) : super(key: key);

  @override
  State<test2networking> createState() => _test2networkingState();
}

class _test2networkingState extends State<test2networking> {
  Future<List<UserModel>> getTodosData() async {
    var response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));
    List<UserModel> listOfTodos = userModelFromJson(response.body);
    return listOfTodos;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Networking"),
          centerTitle: true,
          backgroundColor: Colors.red[400],
        ),
        body: Card(
          child: FutureBuilder(
              future: getTodosData(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<UserModel>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, i) {
                        return ListTile(
                          onTap: () {},
                          title: Text(snapshot.data![i].id.toString()),
                          subtitle: Column(
                            children: [
                              Text(snapshot.data![i].title ?? ''),
                              Text(snapshot.data![i].userId.toString()),
                              Text(snapshot.data![i].completed.toString()),
                            ],
                          ),
                        );
                      });
                }
              }),
        ));
  }
}
