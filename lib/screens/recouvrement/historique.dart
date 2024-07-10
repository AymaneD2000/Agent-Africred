import 'package:africredagent/const/colors.dart';
import 'package:africredagent/screens/bottom_nav.dart';

import 'package:africredagent/screens/recouvrement/recouvrement.dart';
import 'package:africredagent/widgets/myText.dart';
import 'package:africredagent/widgets/usablecard.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:africredagent/screens/du_journalier/creditimpayer.dart'
    as crediImpayer;

class Historique extends StatefulWidget {
  const Historique({super.key});

  @override
  State<Historique> createState() => _HistoriqueState();
}

class _HistoriqueState extends State<Historique> {
  int currentPage = 0;
  final int itemsPerPage = 3;
  String selected = "PAR DATE";
  final List<DataItem> items = [
    DataItem(
      client: 'Nandy Kassoke',
      marche: 'Allah Minai Sugu',
      statut: 'En attente',
      agentImage: 'assets/images/women.jpg',
      telephone: "465879870987",
      agent: 'Veronica',
      montantPaye: '123 456 CFA',
      clientImage: 'assets/images/profile-user.png',
    ),
    DataItem(
        telephone: "465879870987",
        client: 'Nandy Kassoke',
        marche: 'Allah Minai Sugu',
        montantPaye: '432 423 CFA',
        statut: 'Terminé',
        clientImage: 'assets/images/profile-user.png',
        agentImage: 'assets/images/profile-user.png',
        agent: 'Veronica'),
    DataItem(
        telephone: "465879870987",
        client: 'Veronic a Akpan',
        marche: 'SuguBa',
        montantPaye: '123 456 CFA',
        statut: 'Terminé',
        clientImage: 'assets/images/profile-user.png',
        agentImage: 'assets/images/profile-user.png',
        agent: 'Veronica'),
    DataItem(
        telephone: "465879870987",
        client: 'Veronic a Akpan',
        marche: 'Hall de Bamako',
        montantPaye: '123 456 CFA',
        statut: 'Terminé',
        clientImage: 'assets/images/profile-user.png',
        agentImage: 'assets/images/profile-user.png',
        agent: 'Veronica'),
    DataItem(
        telephone: "465879870987",
        client: 'Veronic a Akpan',
        marche: 'WolofoBougou',
        montantPaye: '123 456 CFA',
        statut: 'Terminé',
        clientImage: 'assets/images/profile-user.png',
        agentImage: 'assets/images/profile-user.png',
        agent: 'Veronica'),
    DataItem(
        telephone: "465879870987",
        client: 'Veronic a Akpan',
        marche: 'Allah Minai Sugu',
        montantPaye: '123 456 CFA',
        statut: 'Terminé',
        clientImage: 'assets/images/profile-user.png',
        agentImage: 'assets/images/profile-user.png',
        agent: 'Veronica'),
  ];
  List<String> dItems = [
    "Sanata Berthé : 125 000 CFA",
    "Adja : 120 300 CFA",
    "Mariam : 90 300 CFA",
    "Fatim : 5 500 CFA"
  ];
  String? dSelectd = "Adja : 120 300 CFA";
  @override
  Widget build(BuildContext context) {
    int totalPages = (items.length / itemsPerPage).ceil();

    List<DataItem> paginatedItems =
        items.skip(currentPage * itemsPerPage).take(itemsPerPage).toList();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar().appBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap(10),
            Mytext(
              text: "AUJOURD'HUI, LE 10-07-2024",
              color: Colors.green,
              size: size.width * 0.035,
              weight: FontWeight.bold,
            ),
            Gap(size.height * 0.01),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  element(size, "RECOUVREMENT", Icons.note_alt_sharp,
                      Colors.white, primaryPurple),
                  const Gap(10),
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            var sel = dSelectd;
                            return AlertDialog(
                              backgroundColor: Colors.white,
                              title: Mytext(
                                text: "Historique Global",
                                weight: FontWeight.w700,
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Mytext(
                                    text: "Client et prêt acquis",
                                    size: 16,
                                    weight: FontWeight.w500,
                                  ),
                                  Gap(10),
                                  DropdownMenu<String>(
                                    initialSelection: dItems.first,
                                    onSelected: (String? value) {
                                      // This is called when the user selects an item.
                                      setState(() {
                                        sel = value!;
                                      });
                                    },
                                    dropdownMenuEntries: dItems
                                        .map<DropdownMenuEntry<String>>(
                                            (String value) {
                                      return DropdownMenuEntry<String>(
                                          value: value, label: value);
                                    }).toList(),
                                  ),
                                  Gap(size.height * 0.01),
                                  Container(
                                    width: size.width,
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              actions: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Colors.grey.withOpacity(0.5),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(9))),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Mytext(
                                      text: "Rétourner",
                                      color: Colors.black,
                                    )),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: primaryPurple,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(9))),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.book,
                                          color: Colors.white,
                                        ),
                                        Mytext(
                                          text: "Historique",
                                          color: Colors.white,
                                        ),
                                      ],
                                    )),
                              ],
                            );
                          });
                    },
                    child: element(
                        size,
                        "HISTORIQUE GLOBALE",
                        Icons.local_fire_department,
                        Colors.white,
                        primaryGreen),
                  )
                ],
              ),
            ),
            Gap(size.height * 0.02),
            Container(
              padding:
                  EdgeInsets.all(MediaQuery.of(context).size.width * 0.028),
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      UsableCard(
                        borderRadius: 4,
                        text: "Excel",
                        cardColor: Colors.grey,
                        textColor: Colors.white,
                      ),
                      const Gap(8),
                      UsableCard(
                        borderRadius: 4,
                        text: "PDF",
                        cardColor: Colors.grey,
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  const Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Mytext(text: "Search:"),
                      const Gap(8),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: const TextField(
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: size.width,
                    child: DataTable(
                      // horizontalMargin: size.width * 0.04,
                      columns: [
                        DataColumn(
                          label: Mytext(
                            text: "Date",
                            size: MediaQuery.textScalerOf(context).scale(14),
                            color: Colors.blue,
                            weight: FontWeight.w600,
                          ),
                        ),
                        DataColumn(
                          label: Mytext(
                            text: "N˚ Compte",
                            size: MediaQuery.textScalerOf(context).scale(14),
                            color: Colors.blue,
                            weight: FontWeight.w600,
                          ),
                        ),
                      ],
                      rows: List.generate(paginatedItems.length, (i) {
                        return DataRow(
                          cells: [
                            DataCell(
                              onTap: () => showDataItemDialog(
                                  context, paginatedItems[i]),
                              paginatedItems[i].clientImage.isNotEmpty
                                  ? ClipOval(
                                      child: Image.asset(
                                        paginatedItems[i].clientImage,
                                        height: 40,
                                        width: 40,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : const Icon(Icons.person),
                            ),
                            DataCell(
                                onTap: () => showDataItemDialog(
                                    context, paginatedItems[i]),
                                Text(paginatedItems[i].marche)),
                          ],
                        );
                      }),
                    ),
                  ),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: currentPage > 0
                            ? () {
                                setState(() {
                                  currentPage--;
                                });
                              }
                            : null,
                        child: const Text("Précédent"),
                      ),
                      Text("${currentPage + 1} / $totalPages"),
                      ElevatedButton(
                        onPressed: currentPage < totalPages - 1
                            ? () {
                                setState(() {
                                  currentPage++;
                                });
                              }
                            : null,
                        child: const Text("Suivant"),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container element(
      Size size, String name, IconData icon, Color color, bgColor) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Icon(
            icon,
            color: color,
          ),
          Gap(
            size.width * 0.02,
          ),
          Mytext(
            text: name,
            color: color,
          )
        ],
      ),
    );
  }

  void showDataItemDialog(BuildContext context, DataItem dataItem) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(dataItem.client),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                ClipOval(
                  child: Image.asset(
                    dataItem.clientImage,
                    height: 100,
                    width: 100,
                    fit: BoxFit.contain,
                  ),
                ),
                const Gap(10),
                crediImpayer.DataItemDetailRow(
                  label: 'Téléphone:',
                  value: dataItem.telephone,
                  textColor: const Color(0xfffcb92c),
                ),
                crediImpayer.DataItemDetailRow(
                    label: 'Marché:', value: dataItem.marche),
                crediImpayer.DataItemDetailRow(
                  label: 'Montant payé:',
                  value: dataItem.montantPaye,
                  textColor: const Color(0xfffcb92c),
                ),
                crediImpayer.DataItemDetailRow(
                  label: 'Status:',
                  value: dataItem.statut,
                  textColor: const Color(0xfffcb92c),
                ),
                crediImpayer.DataItemDetailRow(
                  label: 'Agent:',
                  value: dataItem.agent,
                  textColor: const Color(0xfffcb92c),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Mytext(text: 'Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Mytext(
                text: 'Supprimer',
                color: Colors.red,
              ),
              onPressed: () {
                // Handle action button press
              },
            ),
          ],
        );
      },
    );
  }
}
