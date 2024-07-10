import 'package:africredagent/const/colors.dart';
import 'package:africredagent/screens/dashboard/searchPage.dart';
import 'package:africredagent/screens/du_journalier/creditimpayer.dart';
import 'package:africredagent/screens/recouvrement/historique.dart';
import 'package:africredagent/widgets/myText.dart';
import 'package:africredagent/widgets/usablecard.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class Recouvrement extends StatefulWidget {
  const Recouvrement({super.key});

  @override
  State<Recouvrement> createState() => _RecouvrementState();
}

class _RecouvrementState extends State<Recouvrement> {
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

  final TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = DateFormat('MM/dd/yyyy').format(picked);
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // dSelectd = dItems[0];
  }

  @override
  Widget build(BuildContext context) {
    int totalPages = (items.length / itemsPerPage).ceil();
    String dropdownValue = dItems.first;
    List<DataItem> paginatedItems =
        items.skip(currentPage * itemsPerPage).take(itemsPerPage).toList();
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        decoration: BoxDecoration(color: bckgr),
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Mytext(
                text: "RECOUVREMENT GLOBAL : 259 503 421 CFA",
                color: Colors.green,
                size: size.width * 0.035,
                weight: FontWeight.bold,
              ),
              Gap(size.height * 0.01),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    element(size, "ETAT D'ARRETE", Icons.note_alt_sharp,
                        Colors.white, primaryPurple),
                    const Gap(10),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Historique();
                        }));
                      },
                      child: element(size, "HISTORIQUE", Icons.history,
                          Colors.white, primaryPurple),
                    ),
                    const Gap(10),
                    element(size, "ETAT GLOBALE", Icons.local_fire_department,
                        Colors.white, primaryGreen)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Searchpage();
                        }));
                      },
                      child: Container(
                        height: size.height * 0.07,
                        width: size.width * 0.15,
                        decoration: BoxDecoration(
                            color: primaryPurple,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(Icons.search),
                      ),
                    ),
                    Gap(size.width * 0.02),
                    Card(
                      color: Colors.white,
                      elevation: 0,
                      child: Container(
                        //height: siz.height * 0.07,
                        constraints: BoxConstraints(
                          maxWidth: size.width * 0.65,
                        ),
                        padding: const EdgeInsets.all(4.0),
                        child: TextFormField(
                          controller: _dateController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'mm/dd/yyyy',
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.calendar_today),
                              onPressed: () => _selectDate(context),
                            ),
                          ),
                          readOnly: true,
                          onTap: () => _selectDate(context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.005),
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              recouvrementSheet(size, false);
                            },
                            child: element(
                                size,
                                "Récouvrement",
                                Icons.calendar_today,
                                Colors.white,
                                primaryPurple),
                          ),
                          Gap(size.width * 0.01),
                          InkWell(
                            onTap: () {
                              recouvrementSheet(size, true);
                            },
                            child: element(size, "Rétrait Epargne",
                                Icons.arrow_upward, Colors.white, Colors.red),
                          ),
                        ],
                      ),
                    ),
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
                      margin: EdgeInsets.only(
                          top: size.height * 0.002, right: size.height * 0.002),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Mytext(
                            text: "Afficher par : ",
                            weight: FontWeight.w600,
                            color: Colors.black87,
                            size: 18,
                          ),
                          Row(
                            children: [
                              element(size, 'Agent', Icons.person, Colors.white,
                                  primaryGreen),
                              Gap(size.width * 0.04),
                              element(
                                  size,
                                  'Marché',
                                  Icons.airplane_ticket_outlined,
                                  Colors.white,
                                  primaryGreen),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: size.width,
                      child: DataTable(
                        // horizontalMargin: size.width * 0.04,
                        columns: [
                          DataColumn(
                            label: Mytext(
                              text: "Client",
                              size: MediaQuery.textScalerOf(context).scale(14),
                              color: Colors.blue,
                              weight: FontWeight.w600,
                            ),
                          ),
                          DataColumn(
                            label: Mytext(
                              text: "Marché",
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
        ));
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
                DataItemDetailRow(
                  label: 'Téléphone:',
                  value: dataItem.telephone,
                  textColor: const Color(0xfffcb92c),
                ),
                DataItemDetailRow(label: 'Marché:', value: dataItem.marche),
                DataItemDetailRow(
                  label: 'Montant payé:',
                  value: dataItem.montantPaye,
                  textColor: const Color(0xfffcb92c),
                ),
                DataItemDetailRow(
                  label: 'Status:',
                  value: dataItem.statut,
                  textColor: const Color(0xfffcb92c),
                ),
                DataItemDetailRow(
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

  PersistentBottomSheetController recouvrementSheet(Size size, bool isRerait) {
    return showBottomSheet(
        showDragHandle: true,
        context: context,
        builder: (context) {
          var sel = dSelectd;
          return !isRerait
              ? Container(
                  padding: EdgeInsets.only(
                      left: size.width * 0.01, right: size.width * 0.01),
                  height: size.height / 1.5,
                  width: size.width,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.calendar_today),
                            Gap(size.width * 0.01),
                            Mytext(
                              text: "Récouvrement journalier",
                              weight: FontWeight.w700,
                              size: MediaQuery.textScalerOf(context).scale(16),
                            )
                          ],
                        ),
                        Gap(size.height * 0.015),
                        Mytext(text: "Client"),
                        Gap(size.height * 0.01),
                        Gap(size.height * 0.01),
                        DropdownMenu<String>(
                          initialSelection: dItems.first,
                          onSelected: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              sel = value!;
                            });
                          },
                          dropdownMenuEntries: dItems
                              .map<DropdownMenuEntry<String>>((String value) {
                            return DropdownMenuEntry<String>(
                                value: value, label: value);
                          }).toList(),
                        ),
                        Gap(size.height * 0.01),
                        const TextField(
                          decoration: InputDecoration(
                              labelText: 'Capital',
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                        ),
                        const Gap(10),
                        const TextField(
                          decoration: InputDecoration(
                              labelText: 'Interêt',
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                        ),
                        const Gap(10),
                        const TextField(
                          decoration: InputDecoration(
                              labelText: 'Epargne',
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                        ),
                        const Gap(10),
                        const TextField(
                          decoration: InputDecoration(
                              labelText: 'Pénalité',
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)))),
                        ),
                        Gap(size.height * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(6)),
                                child: Mytext(
                                  text: "Annuler",
                                  size: 16,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Mytext(text: "Success"),
                                        content: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Mytext(
                                                  text:
                                                      "Récouvrement effectué !")
                                            ],
                                          ),
                                        ),
                                        actions: [
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                Navigator.pop(context);
                                              },
                                              child: Mytext(
                                                text: "Ok",
                                              ))
                                        ],
                                      );
                                    });
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: primaryPurple,
                                    borderRadius: BorderRadius.circular(6)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.calendar_month,
                                      color: Colors.white,
                                    ),
                                    Mytext(
                                      text: "Récouvrir",
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Gap(size.height * 0.03),
                      ],
                    ),
                  ),
                )
              : Container(
                  padding: EdgeInsets.only(
                      left: size.width * 0.04, right: size.width * 0.04),
                  height: size.height / 1.8,
                  width: size.width,
                  child: Column(
                    children: [
                      Mytext(
                        text: "Retait Epargne",
                        size: 18,
                        weight: FontWeight.w600,
                      ),
                      const Gap(30),
                      Card(
                        color: Colors.white,
                        elevation: 0,
                        child: Container(
                          // height: siz.height * 0.07,
                          // constraints: BoxConstraints(
                          //   maxWidth: size.width * 0.,
                          // ),
                          padding: const EdgeInsets.all(4.0),
                          child: TextFormField(
                            controller: _dateController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'mm/dd/yyyy',
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.calendar_today),
                                onPressed: () => _selectDate(context),
                              ),
                            ),
                            readOnly: true,
                            onTap: () => _selectDate(context),
                          ),
                        ),
                      ),
                      const Gap(10),
                      const TextField(
                        decoration: InputDecoration(
                            labelText: 'Client',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                      ),
                      const Gap(15),
                      const TextField(
                        decoration: InputDecoration(
                            labelText: 'Montant du rétrait',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                      ),
                      Gap(size.height * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(6)),
                              child: Mytext(
                                text: "Annuler",
                                size: 16,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Mytext(
                                        text: "Rétirer effectué !",
                                        size: 18,
                                        weight: FontWeight.w700,
                                      ),
                                      content: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Mytext(
                                              text:
                                                  "Votre retraitde 20030 a été effectué avec succes!",
                                            )
                                          ],
                                        ),
                                      ),
                                      actions: [
                                        ElevatedButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              Navigator.pop(context);
                                            },
                                            child: Mytext(
                                              text: "Ok",
                                            ))
                                      ],
                                    );
                                  });
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: primaryPurple,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    Icons.arrow_upward,
                                    color: Colors.white,
                                  ),
                                  Mytext(
                                    text: "Rétirer",
                                    size: 16,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gap(size.height * 0.03),
                    ],
                  ),
                );
        });
  }
}

class DataItem {
  final String client;
  final String marche;
  final String telephone;
  final String montantPaye;
  final String statut;
  final String agent;
  final String clientImage;
  final String agentImage;

  DataItem({
    required this.client,
    required this.marche,
    required this.telephone,
    required this.montantPaye,
    required this.agent,
    required this.statut,
    required this.clientImage,
    required this.agentImage,
  });
}
