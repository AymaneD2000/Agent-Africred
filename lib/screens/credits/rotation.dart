import 'package:africredagent/widgets/myText.dart';
import 'package:africredagent/widgets/usablecard.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Rotation extends StatefulWidget {
  Rotation({super.key});

  @override
  State<Rotation> createState() => _RotationState();
}

class _RotationState extends State<Rotation> {
    int currentPage = 0;
    final int itemsPerPage = 6;
  @override
  Widget build(BuildContext context) {
    final List<DataItem> items = [
      DataItem(
        client: 'Nandy Kassoke',
        marche: 'Allah Minai Sugu',
        rotations: '1 fois / 7',
        rentabilite: '26 000 CFA',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        client: 'Veronica Akpan',
        marche: 'Allah Minai Sugu',
        rotations: '123 456 CFA',
        rentabilite: '20 000 CFA',
        image: 'assets/images/profile-user.png',
      ),
      DataItem(
        client: 'Kadia Doumbia',
        marche: 'Allah Minai Sugu',
        rotations: '3 fois / 7',
        rentabilite: '10 000 CFA',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        client: 'Assetou Toure',
        marche: 'Allah Minai Sugu',
        rotations: '2 fois / 7',
        rentabilite: '50 000 CFA',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        client: 'Amadou Bah',
        marche: 'Allah Minai Sugu',
        rotations: '5 fois / 7',
        rentabilite: '15 000 CFA',
        image: 'assets/images/profile-user.png',
      ),
      DataItem(
        client: 'Nandy Kassoke',
        marche: 'Allah Minai Sugu',
        rotations: '6 fois / 7',
        rentabilite: '30 270 CFA',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        client: 'Veronica Akpan',
        marche: 'Allah Minai Sugu',
        rotations: '1 fois / 7',
        rentabilite: '20 000 CFA',
        image: 'assets/images/profile-user.png',
      ),
      DataItem(
        client: 'Kadia Doumbia',
        marche: 'Allah Minai Sugu',
        rotations: '2 fois / 7',
        rentabilite: '10 000 CFA',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        client: 'Assetou Toure',
        marche: 'Allah Minai Sugu',
        rotations: '7 fois / 7',
        rentabilite: '50 000 CFA',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        client: 'Amadou Bah',
        marche: 'Allah Minai Sugu',
        rotations: '1 fois / 7',
        rentabilite: '15 000 CFA',
        image: 'assets/images/profile-user.png',
      ),
      DataItem(
        client: 'Nandy Kassoke',
        marche: 'Allah Minai Sugu',
        rotations: '1 fois / 7',
        rentabilite: '30 270 CFA',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        client: 'Veronica Akpan',
        marche: 'Allah Minai Sugu',
        rotations: '1 fois / 7',
        rentabilite: '20 000 CFA',
        image: 'assets/images/profile-user.png',
      ),
      DataItem(
        client: 'Kadia Doumbia',
        marche: 'Allah Minai Sugu',
        rotations: '1 fois / 7',
        rentabilite: '10 000 CFA',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        client: 'Assetou Toure',
        marche: 'Allah Minai Sugu',
        rotations: '1 fois / 7',
        rentabilite: '50 000 CFA',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        client: 'Amadou Bah',
        marche: 'Allah Minai Sugu',
        rotations: '1 fois / 7',
        rentabilite: '15 000 CFA',
        image: 'assets/images/profile-user.png',
      ),
    ];

    int totalPages = (items.length / itemsPerPage).ceil();

    List<DataItem> paginatedItems = items.skip(currentPage * itemsPerPage).take(itemsPerPage).toList();

    return Scaffold(
      backgroundColor: Color(0xFFF1F5F7),
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
      body: Container(
        padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.02, left: MediaQuery.of(context).size.width * 0.02),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Mytext(
                  text: "LES ROTATIONS",
                  color: Colors.green,
                  size: MediaQuery.textScalerOf(context).scale(16),
                  weight: FontWeight.w800,
                ),
                Mytext(
                  text: "Les rotations",
                  color: Colors.grey,
                  size: MediaQuery.textScalerOf(context).scale(12),
                  weight: FontWeight.w400,
                ),
              ],
            ),
            UsableCard(
              borderRadius: 4,
              text: "LISTE D'ATTENTE",
              cardColor: Colors.blue,
              textColor: Colors.white,
            ),
            Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
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
                      Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Mytext(text: "Search:"),
                      Gap(8),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: TextField(
                          decoration: InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                    ],
                  ),
                  DataTable(
                    columns: [
                      DataColumn(
                        label: Mytext(
                          text: "Profile",
                          size: MediaQuery.textScalerOf(context).scale(14),
                          color: Colors.blue,
                          weight: FontWeight.w600,
                        ),
                      ),
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
                          text: "Marcher",
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
                             onTap: () => showDataItemDialog(context, paginatedItems[i]),
                            paginatedItems[i].image.isNotEmpty
                                ? ClipOval(
                                    child: Image.asset(
                                      paginatedItems[i].image,
                                      height: 40,
                                      width: 40,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : Icon(Icons.person),
                          ),
                          DataCell(
                            onTap: () => showDataItemDialog(context, paginatedItems[i]),
                            Text(paginatedItems[i].client)
                            ),
                          DataCell(
                            onTap: () => showDataItemDialog(context, paginatedItems[i]),
                            Text(paginatedItems[i].marche)
                            ),
                        ],
                      );
                    }),
                  ),
                  Spacer(),
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
                        child: Text("Précédent"),
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
                        child: Text("Suivant"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
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
                    dataItem.image,
                    height: 100,
                    width: 100,
                    fit: BoxFit.fill,
                  ),
                ),
                Gap(10),
                DataItemDetailRow(label: 'Marché:', value: dataItem.marche),
                DataItemDetailRow(label: 'Client:', value: dataItem.client, textColor: Color(0xfffcb92c),),
                DataItemDetailRow(label: 'Rentabilité en 2024', value: dataItem.rentabilite),
                DataItemDetailRow(label: 'Rotations en 2024:', value: dataItem.rotations),
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
              child: Mytext(text:  'Supprimer', color: Colors.red,),
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

class DataItemDetailRow extends StatelessWidget {
  final String label;
  final String value;
  Color? textColor;

  DataItemDetailRow({Key? key, required this.label, required this.value, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: <Widget>[
          Mytext(
            text: label,
            weight: FontWeight.bold,
          ),
          Gap(8),
          Expanded(
            child: Mytext(text: value, color: textColor,),
          ),
        ],
      ),
    );
  }
}

class DataItem {
  final String client;
  final String marche;
  final String rotations;
  final String rentabilite;
  final String image;

  DataItem({
    required this.client,
    required this.marche,
    required this.rotations,
    required this.rentabilite,
    required this.image,
  });
}