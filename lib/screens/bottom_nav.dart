import 'package:africredagent/main.dart';
import 'package:africredagent/screens/credits/creditsencours.dart';
import 'package:africredagent/screens/credits/creditsolder.dart';
import 'package:africredagent/screens/credits/listeattente.dart';
import 'package:africredagent/screens/dashboard/dashboard.dart';
import 'package:africredagent/screens/du_journalier/dujournalier.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BottomNav extends StatefulWidget {
  BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final List<Widget> _pages = [
    DashBoard(),
    MyHomePage(title: 'Flutter Demo Home Page'),
    MyHomePage(title: 'Flutter Demo Home Page'),
    ListeAttenteScreen(),
    CreditsEncoursScreen(),
    CreditsSolderScreen(),
    DujournalierScreen()
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
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        ListTile(
                          selectedColor: Colors.purple,
                          leading: Icon(Icons.dashboard),
                          title: Text('Tableau de bord'),
                          selected: currentIndex == 0 ? true : false,
                          onTap: () {
                            setState(() {
                              onChange(0);
                            });
                          },
                        ),
                        ListTile(
                          selectedColor: Colors.purple,
                          leading: Icon(Icons.calendar_month),
                          title: Text('Recouvrements'),
                          selected: currentIndex == 3 ? true : false,
                          onTap: () {
                            setState(() {
                              onChange(3);
                            });
                          },
                        ),
                        ExpansionTile(
                          leading: Icon(Icons.credit_card),
                          title: Text('Crédits'),
                          trailing: Chip(
                            label: Text('747'),
                            backgroundColor: Colors.green[200],
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text('Liste d\'attente'),
                              trailing: Chip(
                                label: Text('0'),
                                backgroundColor: Colors.grey[200],
                              ),
                              onTap: () {},
                            ),
                            ListTile(
                              title: Text('Crédits en cours'),
                              selected: currentIndex == 4? true:false,
                              onTap: () {
                                setState(() {
                                onChange(4);
                              });
                              },
                            ),
                            ListTile(
                              selected: currentIndex == 5? true:false,
                              title: Text('Crédits soldés'),
                              onTap: () {
                                setState(() {
                                onChange(5);
                              });
                              },
                            ),
                          ],
                        ),
                        ListTile(
                          selected: currentIndex == 6? true:false,
                          leading: Icon(Icons.schedule),
                          title: Text('Dûs Journaliers'),
                          onTap: () {
                            setState(() {
                                onChange(6);
                              });
                          },
                        ),
                        ExpansionTile(
                          leading: Icon(Icons.anchor),
                          title: Text('Encours'),
                          children: <Widget>[
                            ListTile(
                              title: Text('Enc. Sans Intérêt'),
                              onTap: () {},
                            ),
                            ListTile(
                              title: Text('Encours Global'),
                              onTap: () {},
                            ),
                          ],
                        ),
                        ExpansionTile(
                          leading: Icon(Icons.account_balance_wallet),
                          title: Text('Comptes'),
                          trailing: Chip(
                            label: Text('337'),
                            backgroundColor: Colors.green[200],
                          ),
                          children: [
                            ListTile(
                              leading: Icon(Icons.person_4),
                              title: Text('Clients'),
                              onTap: () {},
                            ),
                            ListTile(
                              leading: Icon(Icons.house),
                              title: Text('Entreprise'),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: _pages[currentIndex],
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (value) {
            onChange(value);
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          ],
          selectedIndex: currentIndex >= 3 ? 0 : currentIndex,
        ));
  }
}
