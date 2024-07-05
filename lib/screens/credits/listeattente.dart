// import 'package:africredagent/widgets/dropdownButton.dart';
// import 'package:africredagent/widgets/myText.dart';
// import 'package:africredagent/widgets/UsableCard.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';

// class ListeAttenteScreen extends StatefulWidget {
//   const ListeAttenteScreen({super.key});

//   @override
//   State<ListeAttenteScreen> createState() => _ListeAttenteScreenState();
// }

// class _ListeAttenteScreenState extends State<ListeAttenteScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final List<DataItem> items = [
//     DataItem(
//       beneficiaire: 'Nandy Kassoke',
//       marche: 'Allah Minai Sugu',
//       capital: '432 423 CFA',
//       fraisDeblocage: '30 270 CFA',
//       renouvellement: '4 fois',
//       dateDeblocage: 'À DÉFINIR',
//       nbreJours: '50 jours',
//       statut: 'En attente',
//       action: 'Supprimer',
//       image: 'assets/images/women.jpg',
//     ),
//     DataItem(
//       beneficiaire: 'Veronica Akpan',
//       marche: 'Allah Minai Sugu',
//       capital: '123 456 CFA',
//       fraisDeblocage: '20 000 CFA',
//       renouvellement: '2 fois',
//       dateDeblocage: '01-01-2023',
//       nbreJours: '30 jours',
//       statut: 'Terminé',
//       action: 'Supprimer',
//       image: 'assets/images/profile-user.png',
//     ),
//     DataItem(
//       beneficiaire: 'Kadia Doumbia',
//       marche: 'Allah Minai Sugu',
//       capital: '78 900 CFA',
//       fraisDeblocage: '10 000 CFA',
//       renouvellement: '1 fois',
//       dateDeblocage: '15-03-2023',
//       nbreJours: '20 jours',
//       statut: 'En cours',
//       action: 'Supprimer',
//       image: 'assets/images/women.jpg',
//     ),
//     DataItem(
//       beneficiaire: 'Assetou Toure',
//       marche: 'Allah Minai Sugu',
//       capital: '567 890 CFA',
//       fraisDeblocage: '50 000 CFA',
//       renouvellement: '5 fois',
//       dateDeblocage: '20-02-2023',
//       nbreJours: '40 jours',
//       statut: 'En attente',
//       action: 'Supprimer',
//       image: 'assets/images/women.jpg',
//     ),
//     DataItem(
//       beneficiaire: 'Amadou Bah',
//       marche: 'Allah Minai Sugu',
//       capital: '98 765 CFA',
//       fraisDeblocage: '15 000 CFA',
//       renouvellement: '3 fois',
//       dateDeblocage: '01-04-2023',
//       nbreJours: '60 jours',
//       statut: 'En attente',
//       action: 'Supprimer',
//       image: 'assets/images/profile-user.png',
//     ),
//     DataItem(
//       beneficiaire: 'Nandy Kassoke',
//       marche: 'Allah Minai Sugu',
//       capital: '432 423 CFA',
//       fraisDeblocage: '30 270 CFA',
//       renouvellement: '4 fois',
//       dateDeblocage: 'À DÉFINIR',
//       nbreJours: '50 jours',
//       statut: 'En attente',
//       action: 'Supprimer',
//       image: 'assets/images/women.jpg',
//     ),
//     DataItem(
//       beneficiaire: 'Veronica Akpan',
//       marche: 'Allah Minai Sugu',
//       capital: '123 456 CFA',
//       fraisDeblocage: '20 000 CFA',
//       renouvellement: '2 fois',
//       dateDeblocage: '01-01-2023',
//       nbreJours: '30 jours',
//       statut: 'Terminé',
//       action: 'Supprimer',
//       image: 'assets/images/profile-user.png',
//     ),
//     DataItem(
//       beneficiaire: 'Kadia Doumbia',
//       marche: 'Allah Minai Sugu',
//       capital: '78 900 CFA',
//       fraisDeblocage: '10 000 CFA',
//       renouvellement: '1 fois',
//       dateDeblocage: '15-03-2023',
//       nbreJours: '20 jours',
//       statut: 'En cours',
//       action: 'Supprimer',
//       image: 'assets/images/women.jpg',
//     ),
//     DataItem(
//       beneficiaire: 'Assetou Toure',
//       marche: 'Allah Minai Sugu',
//       capital: '567 890 CFA',
//       fraisDeblocage: '50 000 CFA',
//       renouvellement: '5 fois',
//       dateDeblocage: '20-02-2023',
//       nbreJours: '40 jours',
//       statut: 'En attente',
//       action: 'Supprimer',
//       image: 'assets/images/women.jpg',
//     ),
//     DataItem(
//       beneficiaire: 'Amadou Bah',
//       marche: 'Allah Minai Sugu',
//       capital: '98 765 CFA',
//       fraisDeblocage: '15 000 CFA',
//       renouvellement: '3 fois',
//       dateDeblocage: '01-04-2023',
//       nbreJours: '60 jours',
//       statut: 'En attente',
//       action: 'Supprimer',
//       image: 'assets/images/profile-user.png',
//     ),
    
//   ];
//     return Scaffold(
//       backgroundColor: Color(0xFFF1F5F7),
//       body: Container(
//         padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.02,left: MediaQuery.of(context).size.width*0.02),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Mytext(
//                   text: "Liste   d'attente   :   0 CFA",
//                   color: Colors.green,
//                   size: MediaQuery.textScalerOf(context).scale(16),
//                   weight: FontWeight.w800,),
//                 Mytext(
//                   text: "Liste d'attente",
//                   color: Colors.grey,
//                   size: MediaQuery.textScalerOf(context).scale(12),
//                   weight: FontWeight.w400,),
//               ],
//             ),  
//             UsableCard(
//                   radius: 4,
//                   text: "ROTATIONS",
//                   cardColor: Colors.blue,
//                   textcolor: Colors.white,),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       DropdownButtonExample(),
//                       UsableCard(
//                         radius: 4,
//                         icon: "assets/images/fichier-et-dossier.png",
//                         text: "DOSSIER DE CREDIT",
//                         cardColor: Colors.blue,
//                         textcolor: Colors.white,),
//                   ],),
//                   Spacer(),
//                 Container(
//                   padding: EdgeInsets.all( MediaQuery.of(context).size.width*0.03),
//                   height: MediaQuery.of(context).size.height*0.6,
//                   width: MediaQuery.of(context).size.width,
//                   decoration: BoxDecoration(color: Colors.white),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           UsableCard(
//                             radius: 4,
//                             text: "Excel",
//                             cardColor: Colors.grey,
//                             textcolor: Colors.white,),
//                             Gap(8),
//                           UsableCard(
//                             radius: 4,
//                             text: "PDF",
//                             cardColor: Colors.grey,
//                             textcolor: Colors.white,),
//                             Spacer(),
//                           UsableCard(
//                             radius: 4,
//                             icon: "assets/images/money-bag.png",
//                             text: "Demande de prêt",
//                             cardColor: Colors.blue,
//                             textcolor: Colors.white,), 
//                         ],
//                       ),
//                       Gap(15),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Mytext(text: "Search:"),
//                           Gap(8),
//                           SizedBox(
//                             height: MediaQuery.of(context).size.height*0.03,
//                             width: MediaQuery.of(context).size.width*0.4,
//                             child: TextField(decoration: InputDecoration(border: OutlineInputBorder()),))
//                         ],
//                       ),
//                       DataTable(
//           columns: [
//             DataColumn(
//               label: Mytext(
//                 text: "Profile",
//                 size: MediaQuery.textScalerOf(context).scale(14),
//                 color: Colors.blue,
//                 weight: FontWeight.w600,
//               ),
//             ),
//             DataColumn(
//               label: Mytext(
//                 text: "Bénéficiaire",
//                 size: MediaQuery.textScalerOf(context).scale(14),
//                 color: Colors.blue,
//                 weight: FontWeight.w600,
//               ),
//             ),
//             DataColumn(
//               label: Mytext(
//                 text: "Montant",
//                 size: MediaQuery.textScalerOf(context).scale(14),
//                 color: Colors.blue,
//                 weight: FontWeight.w600,
//               ),
//             ),
//           ],
//           rows: List.generate(items.length, (i) {
//             return DataRow(
//               cells: [
//                 DataCell(
//                   items[i].image.isNotEmpty
//                       ? ClipOval(
//                           child: Image.asset(
//                             items[i].image,
//                             height: 40,
//                             width: 40,
//                             fit: BoxFit.cover,
//                           ),
//                         )
//                       : ClipOval(
//                           child: Image.asset(
//                             items[i].image,
//                             height: 40,
//                             width: 40,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                 ),
//                 DataCell(Text(items[i].beneficiaire)),
//                 DataCell(Text(items[i].capital)),
//               ],
//             );
//           }),
//         ),
//                     ],
//                     ),
//                 ),
//                 Spacer()
//           ],
//           ),
//       )
//     );
//   }
// }

// class DataItem {
//   final String beneficiaire;
//   final String marche;
//   final String capital;
//   final String fraisDeblocage;
//   final String renouvellement;
//   final String dateDeblocage;
//   final String nbreJours;
//   final String statut;
//   final String action;
//   final String image;

//   DataItem({
//     required this.beneficiaire,
//     required this.marche,
//     required this.capital,
//     required this.fraisDeblocage,
//     required this.renouvellement,
//     required this.dateDeblocage,
//     required this.nbreJours,
//     required this.statut,
//     required this.action,
//     required this.image,
//   });
// }


import 'package:africredagent/screens/credits/rotation.dart';
import 'package:africredagent/widgets/dropdownButton.dart';
import 'package:africredagent/widgets/loanrequest.dart';
import 'package:africredagent/widgets/myText.dart';
import 'package:africredagent/widgets/usablecard.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ListeAttenteScreen extends StatefulWidget {
  const ListeAttenteScreen({super.key});

  @override
  State<ListeAttenteScreen> createState() => _ListeAttenteScreenState();
}

class _ListeAttenteScreenState extends State<ListeAttenteScreen> {
  int currentPage = 0;
  final int itemsPerPage = 6;

  @override
  Widget build(BuildContext context) {
    final List<DataItem> items = [
      DataItem(
        beneficiaire: 'Nandy Kassoke',
        marche: 'Allah Minai Sugu',
        capital: '432 423 CFA',
        fraisDeblocage: '30 270 CFA',
        renouvellement: '4 fois',
        dateDeblocage: 'À DÉFINIR',
        nbreJours: '50 jours',
        statut: 'En attente',
        action: 'Supprimer',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        beneficiaire: 'Veronica Akpan',
        marche: 'Allah Minai Sugu',
        capital: '123 456 CFA',
        fraisDeblocage: '20 000 CFA',
        renouvellement: '2 fois',
        dateDeblocage: '01-01-2023',
        nbreJours: '30 jours',
        statut: 'Terminé',
        action: 'Supprimer',
        image: 'assets/images/profile-user.png',
      ),
      DataItem(
        beneficiaire: 'Kadia Doumbia',
        marche: 'Allah Minai Sugu',
        capital: '78 900 CFA',
        fraisDeblocage: '10 000 CFA',
        renouvellement: '1 fois',
        dateDeblocage: '15-03-2023',
        nbreJours: '20 jours',
        statut: 'En cours',
        action: 'Supprimer',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        beneficiaire: 'Assetou Toure',
        marche: 'Allah Minai Sugu',
        capital: '567 890 CFA',
        fraisDeblocage: '50 000 CFA',
        renouvellement: '5 fois',
        dateDeblocage: '20-02-2023',
        nbreJours: '40 jours',
        statut: 'En attente',
        action: 'Supprimer',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        beneficiaire: 'Amadou Bah',
        marche: 'Allah Minai Sugu',
        capital: '98 765 CFA',
        fraisDeblocage: '15 000 CFA',
        renouvellement: '3 fois',
        dateDeblocage: '01-04-2023',
        nbreJours: '60 jours',
        statut: 'En attente',
        action: 'Supprimer',
        image: 'assets/images/profile-user.png',
      ),
      DataItem(
        beneficiaire: 'Nandy Kassoke',
        marche: 'Allah Minai Sugu',
        capital: '432 423 CFA',
        fraisDeblocage: '30 270 CFA',
        renouvellement: '4 fois',
        dateDeblocage: 'À DÉFINIR',
        nbreJours: '50 jours',
        statut: 'En attente',
        action: 'Supprimer',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        beneficiaire: 'Veronica Akpan',
        marche: 'Allah Minai Sugu',
        capital: '123 456 CFA',
        fraisDeblocage: '20 000 CFA',
        renouvellement: '2 fois',
        dateDeblocage: '01-01-2023',
        nbreJours: '30 jours',
        statut: 'Terminé',
        action: 'Supprimer',
        image: 'assets/images/profile-user.png',
      ),
      DataItem(
        beneficiaire: 'Kadia Doumbia',
        marche: 'Allah Minai Sugu',
        capital: '78 900 CFA',
        fraisDeblocage: '10 000 CFA',
        renouvellement: '1 fois',
        dateDeblocage: '15-03-2023',
        nbreJours: '20 jours',
        statut: 'En cours',
        action: 'Supprimer',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        beneficiaire: 'Assetou Toure',
        marche: 'Allah Minai Sugu',
        capital: '567 890 CFA',
        fraisDeblocage: '50 000 CFA',
        renouvellement: '5 fois',
        dateDeblocage: '20-02-2023',
        nbreJours: '40 jours',
        statut: 'En attente',
        action: 'Supprimer',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        beneficiaire: 'Amadou Bah',
        marche: 'Allah Minai Sugu',
        capital: '98 765 CFA',
        fraisDeblocage: '15 000 CFA',
        renouvellement: '3 fois',
        dateDeblocage: '01-04-2023',
        nbreJours: '60 jours',
        statut: 'En attente',
        action: 'Supprimer',
        image: 'assets/images/profile-user.png',
      ),
      DataItem(
        beneficiaire: 'Nandy Kassoke',
        marche: 'Allah Minai Sugu',
        capital: '432 423 CFA',
        fraisDeblocage: '30 270 CFA',
        renouvellement: '4 fois',
        dateDeblocage: 'À DÉFINIR',
        nbreJours: '50 jours',
        statut: 'En attente',
        action: 'Supprimer',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        beneficiaire: 'Veronica Akpan',
        marche: 'Allah Minai Sugu',
        capital: '123 456 CFA',
        fraisDeblocage: '20 000 CFA',
        renouvellement: '2 fois',
        dateDeblocage: '01-01-2023',
        nbreJours: '30 jours',
        statut: 'Terminé',
        action: 'Supprimer',
        image: 'assets/images/profile-user.png',
      ),
      DataItem(
        beneficiaire: 'Kadia Doumbia',
        marche: 'Allah Minai Sugu',
        capital: '78 900 CFA',
        fraisDeblocage: '10 000 CFA',
        renouvellement: '1 fois',
        dateDeblocage: '15-03-2023',
        nbreJours: '20 jours',
        statut: 'En cours',
        action: 'Supprimer',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        beneficiaire: 'Assetou Toure',
        marche: 'Allah Minai Sugu',
        capital: '567 890 CFA',
        fraisDeblocage: '50 000 CFA',
        renouvellement: '5 fois',
        dateDeblocage: '20-02-2023',
        nbreJours: '40 jours',
        statut: 'En attente',
        action: 'Supprimer',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        beneficiaire: 'Amadou Bah',
        marche: 'Allah Minai Sugu',
        capital: '98 765 CFA',
        fraisDeblocage: '15 000 CFA',
        renouvellement: '3 fois',
        dateDeblocage: '01-04-2023',
        nbreJours: '60 jours',
        statut: 'En attente',
        action: 'Supprimer',
        image: 'assets/images/profile-user.png',
      ),
    ];

    int totalPages = (items.length / itemsPerPage).ceil();

    List<DataItem> paginatedItems = items.skip(currentPage * itemsPerPage).take(itemsPerPage).toList();

    return Scaffold(
      backgroundColor: Color(0xFFF1F5F7),
      body: Container(
        padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.02, left: MediaQuery.of(context).size.width * 0.02),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Mytext(
                  text: "Liste   d'attente   :   0 CFA",
                  color: Colors.green,
                  size: MediaQuery.textScalerOf(context).scale(14),
                  weight: FontWeight.w800,
                ),
                Mytext(
                  text: "Liste d'attente",
                  color: Colors.grey,
                  size: MediaQuery.textScalerOf(context).scale(12),
                  weight: FontWeight.w400,
                ),
              ],
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Rotation()));
              },
              child: UsableCard(
                borderRadius: 4,
                text: "ROTATIONS",
                cardColor: Colors.blue,
                textColor: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DropdownButtonExample(),
                UsableCard(
                  borderRadius: 4,
                  iconPath: "assets/images/fichier-et-dossier.png",
                  text: "DOSSIER DE CREDIT",
                  cardColor: Colors.blue,
                  textColor: Colors.white,
                ),
              ],
            ),
            Spacer(),
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
                      GestureDetector(
                        onTap: (){
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
                          decoration: InputDecoration(border: OutlineInputBorder()),
                        ),
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
                          text: "Bénéficiaire",
                          size: MediaQuery.textScalerOf(context).scale(14),
                          color: Colors.blue,
                          weight: FontWeight.w600,
                        ),
                      ),
                      DataColumn(
                        label: Mytext(
                          text: "Montant",
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
                            Text(paginatedItems[i].beneficiaire)
                            ),
                          DataCell(
                            onTap: () => showDataItemDialog(context, paginatedItems[i]),
                            Text(paginatedItems[i].capital)
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
          title: Text(dataItem.beneficiaire),
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
                DataItemDetailRow(label: 'Market:', value: dataItem.marche),
                DataItemDetailRow(label: 'Capital:', value: dataItem.capital, textColor: Color(0xfffcb92c),),
                DataItemDetailRow(label: 'Frais de Blocage:', value: dataItem.fraisDeblocage),
                DataItemDetailRow(label: 'Renouvellement:', value: dataItem.renouvellement),
                DataItemDetailRow(label: 'Date de Blocage:', value: dataItem.dateDeblocage),
                DataItemDetailRow(label: 'Number of Days:', value: dataItem.nbreJours),
                DataItemDetailRow(label: 'Status:', value: dataItem.statut, textColor: Color(0xfffcb92c),),
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
  final String beneficiaire;
  final String marche;
  final String capital;
  final String fraisDeblocage;
  final String renouvellement;
  final String dateDeblocage;
  final String nbreJours;
  final String statut;
  final String action;
  final String image;

  DataItem({
    required this.beneficiaire,
    required this.marche,
    required this.capital,
    required this.fraisDeblocage,
    required this.renouvellement,
    required this.dateDeblocage,
    required this.nbreJours,
    required this.statut,
    required this.action,
    required this.image,
  });
}
