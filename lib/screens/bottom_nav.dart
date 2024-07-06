import 'package:africredagent/main.dart';
import 'package:africredagent/screens/credits/creditsencours.dart';
import 'package:africredagent/screens/credits/creditsolder.dart';
import 'package:africredagent/screens/credits/listeattente.dart';
import 'package:africredagent/screens/dashboard/dashboard.dart';
import 'package:africredagent/screens/profile.dart';
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
    Container(child: Text("Recouvrement"),),
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
              const Spacer(),
              Image.asset(
                "assets/favicon.png",
                height: 40,
                width: 50,
              ),
              const Spacer(),
              const Icon(Icons.notifications_outlined),
              const Gap(5),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProfilePage();
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(15)),
                  padding: const EdgeInsets.all(2.5),
                  child: Icon(Icons.person, color: Colors.grey[500]),
                ),
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
                      const Text("Afri"),
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
                          leading: const Icon(Icons.dashboard),
                          title: const Text('Tableau de bord'),
                          selected: currentIndex == 0 ? true : false,
                          onTap: () {
                            setState(() {
                              onChange(0);
                            });
                          },
                        ),
                        ListTile(
                          selectedColor: Colors.purple,
                          leading: const Icon(Icons.calendar_month),
                          title: const Text('Recouvrements'),
                          selected: currentIndex == 3 ? true : false,
                          onTap: () {
                            setState(() {
                              onChange(3);
                            });
                          },
                        ),
                        ExpansionTile(
                          leading: const Icon(Icons.credit_card),
                          title: const Text('Crédits'),
                          trailing: Chip(
                            label: const Text('747'),
                            backgroundColor: Colors.green[200],
                          ),
                          children: <Widget>[
                            ListTile(
                              selected: currentIndex == 4 ? true : false,
                              title: const Text('Liste d\'attente'),
                              trailing: Chip(
                                label: const Text('0'),
                                
                                backgroundColor: Colors.grey[200],
                              ),
                              onTap: () {
                                setState(() {
                                  onChange(4);
                                });
                              },
                            ),
                            ListTile(
                              title: const Text('Crédits en cours'),
                              selected: currentIndex == 5 ? true : false,
                              onTap: () {
                                setState(() {
                                  onChange(5);
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
                          leading: const Icon(Icons.anchor),
                          title: const Text('Encours'),
                          children: <Widget>[
                            ListTile(
                              title: const Text('Enc. Sans Intérêt'),
                              onTap: () {},
                            ),
                            ListTile(
                              title: const Text('Encours Global'),
                              onTap: () {},
                            ),
                          ],
                        ),
                        ExpansionTile(
                          leading: const Icon(Icons.account_balance_wallet),
                          title: const Text('Comptes'),
                          trailing: Chip(
                            label: const Text('337'),
                            backgroundColor: Colors.green[200],
                          ),
                          children: [
                            ListTile(
                              leading: const Icon(Icons.person_4),
                              title: const Text('Clients'),
                              onTap: () {},
                            ),
                            ListTile(
                              leading: const Icon(Icons.house),
                              title: const Text('Entreprise'),
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
            const NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            const NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            const NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          ],
          selectedIndex: currentIndex >= 3 ? 0 : currentIndex,
        ));
  }
}
