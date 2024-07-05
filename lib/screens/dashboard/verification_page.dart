import 'package:africredagent/const/colors.dart';
import 'package:africredagent/widgets/loanrequest.dart';
import 'package:africredagent/widgets/myText.dart';
import 'package:africredagent/widgets/usablecard.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../credits/listeattente.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  int currentPage = 0;
  final int itemsPerPage = 6;
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
        client: 'Veronica Akpan',
        marche: 'Allah Minai Sugu',
        montantPaye: '123 456 CFA',
        statut: 'Terminé',
        clientImage: 'assets/images/profile-user.png',
        agentImage: 'assets/images/profile-user.png',
        agent: 'Veronica'),
  ];
  @override
  Widget build(BuildContext context) {
    int totalPages = (items.length / itemsPerPage).ceil();

    List<DataItem> paginatedItems =
        items.skip(currentPage * itemsPerPage).take(itemsPerPage).toList();
    Size siz = MediaQuery.of(context).size;
    double btweenSize = siz.height * 0.01;
    return Scaffold(
      backgroundColor: bckgr,
      appBar: AppBar(
        backgroundColor: bckgr,
        title: Row(
          children: [
            Spacer(),
            Image.asset(
              "assets/favicon.png",
              height: 40,
              width: 50,
            ),
            const Spacer(),
            const Icon(Icons.notifications_outlined),
            const Gap(5),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(15)),
              padding: const EdgeInsets.all(2.5),
              child: Icon(Icons.person, color: Colors.grey[500]),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(siz.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Mytext(
                text: "AUJOURD'HUI, LE 27-06-2024",
                size: 13,
                weight: FontWeight.w800,
                color: Colors.green,
              ),
              Gap(btweenSize),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: siz.width * 0.02,
                        bottom: siz.width * 0.02,
                        right: siz.width * 0.035,
                        left: siz.width * 0.035),
                    decoration: BoxDecoration(
                        color: primaryPurple,
                        borderRadius: BorderRadius.circular(9)),
                    child: Mytext(
                      text: "FILTRER",
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                  Gap(10),
                  DropdownButton<String>(
                      value: selected,
                      items: [
                        DropdownMenuItem(
                            value: 'PAR DATE', child: Mytext(text: 'PAR DATE')),
                        DropdownMenuItem(
                            value: 'DATES ENTRES',
                            child: Mytext(
                              text: 'DATES ENTRES',
                              size: siz.width * 0.045,
                              weight: FontWeight.w600,
                            ))
                      ],
                      onChanged: (v) {
                        setState(() {
                          selected = v!;
                        });
                      }),
                ],
              ),
              Gap(10),
              Container(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.005),
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white),
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
                        Gap(8),
                        UsableCard(
                          borderRadius: 4,
                          text: "PDF",
                          cardColor: Colors.grey,
                          textColor: Colors.white,
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return LoanRequestDialog();
                              },
                            );
                          },
                          child: UsableCard(
                            borderRadius: 4,
                            iconPath: "assets/images/money-bag.png",
                            text: "Demande de prêt",
                            cardColor: Colors.blue,
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Gap(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Mytext(text: "Search:"),
                        Gap(8),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: TextField(
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
                          ),
                        ),
                      ],
                    ),
                    DataTable(
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
                        DataColumn(
                          label: Mytext(
                            text: "Téléphone",
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
                                  : Icon(Icons.person),
                            ),
                            DataCell(
                                onTap: () => showDataItemDialog(
                                    context, paginatedItems[i]),
                                Text(paginatedItems[i].marche)),
                            DataCell(
                                onTap: () => showDataItemDialog(
                                    context, paginatedItems[i]),
                                Text(paginatedItems[i].telephone)),
                          ],
                        );
                      }),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
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
                Gap(10),
                DataItemDetailRow(
                  label: 'Téléphone:',
                  value: dataItem.telephone,
                  textColor: Color(0xfffcb92c),
                ),
                DataItemDetailRow(label: 'Marché:', value: dataItem.marche),
                DataItemDetailRow(
                  label: 'Montant payé:',
                  value: dataItem.montantPaye,
                  textColor: Color(0xfffcb92c),
                ),
                DataItemDetailRow(
                  label: 'Status:',
                  value: dataItem.statut,
                  textColor: Color(0xfffcb92c),
                ),
                DataItemDetailRow(
                  label: 'Agent:',
                  value: dataItem.agent,
                  textColor: Color(0xfffcb92c),
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
