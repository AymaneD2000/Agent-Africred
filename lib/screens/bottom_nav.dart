import 'package:africredagent/main.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BottomNav extends StatefulWidget {
  BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final List<Widget> _pages = [
    MyHomePage(title: "Flutter Demo Home Page"),
    MyHomePage(title: 'Flutter Demo Home Page'),
    MyHomePage(title: 'Flutter Demo Home Page')
  ];
  int currentIndex = 0;
  void onChange(int i) {
    setState(() {
      currentIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Spacer(),
              Image.asset(
                "assets/favicon.png",
                height: 40,
                width: 50,
              ),
              Spacer(),
              Icon(Icons.notifications_outlined),
              Gap(5),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(15)),
                padding: EdgeInsets.all(2.5),
                child: Icon(Icons.person, color: Colors.grey[500]),
              )
            ],
          ),
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  DrawerHeader(
                      child: Column(
                    children: [
                      Text("Afri"),
                      Image.asset(
                        "assets/favicon.png",
                        height: 70,
                      )
                    ],
                  )),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, i) {
                        return ListTile(
                          title: Text("Dashboard"),
                        );
                      }),
                ],
              ),
            ),
          ),
        ),
        body: _pages[0],
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (value) {
            onChange(value);
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          ],
          selectedIndex: currentIndex,
        ));
  }
}
