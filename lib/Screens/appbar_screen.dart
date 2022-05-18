import 'package:flutter/material.dart';

class AppbarScreen extends StatefulWidget {
  const AppbarScreen({Key? key}) : super(key: key);

  @override
  State<AppbarScreen> createState() => _AppbarScreenState();
}

class _AppbarScreenState extends State<AppbarScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: Drawer(
              child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_constructors
              UserAccountsDrawerHeader(
                accountName: const Text("Krutik Shiroya"),
                accountEmail: const Text("krutikshiroya123@gmail.com"),
                // ignore: prefer_const_constructors
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: const Text(
                    "K",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text("Name"),
              ),
              const ListTile(
                leading: Icon(Icons.mail),
                title: Text("Email"),
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
              ),
            ],
          )),
          appBar: AppBar(
            title: const Text("Welcome"),
            bottom: TabBar(tabs: [
              const Tab(
                icon: Icon(Icons.watch),
              ),
              const Tab(
                icon: Icon(Icons.star),
              ),
              const Tab(
                icon: Icon(Icons.directions_bike),
              ),
            ]),
            actions: [
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {},
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              PopupMenuButton(itemBuilder: (context) {
                return [
                  const PopupMenuItem(child: Text("first")),
                  const PopupMenuItem(child: Text("second")),
                  const PopupMenuItem(child: Text("third")),
                ];
              }),
            ],
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text("5 PM"),
              ),
              // Text("time is 5pm"),
              Icon(Icons.star),
              Icon(Icons.directions_bike),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                  backgroundColor: Colors.blue),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.wallet),
                  label: "Wallets",
                  backgroundColor: Colors.blue),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Person",
                  backgroundColor: Colors.blue),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.cabin),
                  label: "Cabin",
                  backgroundColor: Colors.blue),
            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            iconSize: 30,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            elevation: 0,
          ),
        ));
  }
}
