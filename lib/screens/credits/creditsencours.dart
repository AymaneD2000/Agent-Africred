import 'package:africredagent/screens/credits/deblocagedujour.dart';
import 'package:africredagent/widgets/myText.dart';
import 'package:africredagent/widgets/usablecard.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class CreditsEncoursScreen extends StatefulWidget {
  CreditsEncoursScreen({super.key});

  @override
  State<CreditsEncoursScreen> createState() => _CreditsEncoursScreenState();
}

class _CreditsEncoursScreenState extends State<CreditsEncoursScreen> {
  int currentPage = 0;
  final int itemsPerPage = 6;
  final TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

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

  List<DropdownMenuEntry> list = [
    DropdownMenuEntry(value: 'ABEYAN FOU', label: 'ABEYAN FOU')
  ];

  String? selectedValue;
  // final List<String> itemss = [

  // ];

  String truncateText(String text, int length) {
    if (text.length > length) {
      return text.substring(0, length) + '...';
    } else {
      return text;
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<DataItem> items = [
      DataItem(
        beneficiaire: 'Nandy Kassoke',
        numeroCompte: "ABF-516",
        fraisCarte: "0 FCFA",
        capitalAction: "452 423 CFA",
        interet: "20 000",
        marche: 'Allah Minai Sugu',
        capital: '432 423 CFA',
        fraisDeblocage: '30 270 CFA',
        renouvellement: '4 fois',
        dateDeblocage: 'À DÉFINIR',
        dateEcheance: "12-10-2023",
        nbreJours: '50 jours',
        statut: 'En attente',
        action: 'Supprimer',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        beneficiaire: 'Nandy Kassoke',
        numeroCompte: "ABF-516",
        fraisCarte: "0 FCFA",
        capitalAction: "452 423 CFA",
        interet: "20 000",
        marche: 'Allah Minai Sugu',
        capital: '432 423 CFA',
        fraisDeblocage: '30 270 CFA',
        renouvellement: '4 fois',
        dateDeblocage: 'À DÉFINIR',
        dateEcheance: "12-10-2023",
        nbreJours: '50 jours',
        statut: 'En attente',
        action: 'Supprimer',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        beneficiaire: 'Nandy Kassoke',
        numeroCompte: "ABF-516",
        fraisCarte: "0 FCFA",
        capitalAction: "452 423 CFA",
        interet: "20 000",
        marche: 'Allah Minai Sugu',
        capital: '432 423 CFA',
        fraisDeblocage: '30 270 CFA',
        renouvellement: '4 fois',
        dateDeblocage: 'À DÉFINIR',
        dateEcheance: "12-10-2023",
        nbreJours: '50 jours',
        statut: 'En attente',
        action: 'Supprimer',
        image: 'assets/images/women.jpg',
      ),
      DataItem(
        beneficiaire: 'Nandy Kassoke',
        numeroCompte: "ABF-516",
        fraisCarte: "0 FCFA",
        capitalAction: "452 423 CFA",
        interet: "20 000",
        marche: 'Allah Minai Sugu',
        capital: '432 423 CFA',
        fraisDeblocage: '30 270 CFA',
        renouvellement: '4 fois',
        dateDeblocage: 'À DÉFINIR',
        dateEcheance: "12-10-2023",
        nbreJours: '50 jours',
        statut: 'En attente',
        action: 'Supprimer',
        image: 'assets/images/women.jpg',
      ),
      // DataItem(
      //   beneficiaire: 'Nandy Kassoke',
      //   numeroCompte: "ABF-516",
      //   fraisCarte: "0 FCFA",
      //   capitalAction: "452 423 CFA",
      //   interet: "20 000",
      //   marche: 'Allah Minai Sugu',
      //   capital: '432 423 CFA',
      //   fraisDeblocage: '30 270 CFA',
      //   renouvellement: '4 fois',
      //   dateDeblocage: 'À DÉFINIR',
      //   dateEcheance: "12-10-2023",
      //   nbreJours: '50 jours',
      //   statut: 'En attente',
      //   action: 'Supprimer',
      //   image: 'assets/images/women.jpg',
      // ),
      // DataItem(
      //   beneficiaire: 'Nandy Kassoke',
      //   numeroCompte: "ABF-516",
      //   fraisCarte: "0 FCFA",
      //   capitalAction: "452 423 CFA",
      //   interet: "20 000",
      //   marche: 'Allah Minai Sugu',
      //   capital: '432 423 CFA',
      //   fraisDeblocage: '30 270 CFA',
      //   renouvellement: '4 fois',
      //   dateDeblocage: 'À DÉFINIR',
      //   dateEcheance: "12-10-2023",
      //   nbreJours: '50 jours',
      //   statut: 'En attente',
      //   action: 'Supprimer',
      //   image: 'assets/images/women.jpg',
      // ),
    ];
    Size siz = MediaQuery.of(context).size;
    int totalPages = (items.length / itemsPerPage).ceil();

    List<DataItem> paginatedItems =
        items.skip(currentPage * itemsPerPage).take(itemsPerPage).toList();

    return Scaffold(
      backgroundColor: Color(0xFFF1F5F7),
      body: Container(
        padding: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.02,
            left: MediaQuery.of(context).size.width * 0.02),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Mytext(
                  text: "Crédits   encours   :   2 600 000 CFA",
                  color: Color(0xff1cbb8c),
                  size: MediaQuery.textScalerOf(context).scale(14),
                  weight: FontWeight.w800,
                ),
                Mytext(
                  text: "Crédits   encours",
                  color: Colors.grey,
                  size: MediaQuery.textScalerOf(context).scale(12),
                  weight: FontWeight.w400,
                ),
              ],
            ),
            Gap(5),
            Container(
                alignment: Alignment.center,
                //height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xff5664d2),
                ),
                child: DropdownMenu(
                  inputDecorationTheme: InputDecorationTheme(
                      iconColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.white, fontSize: 15)),
                  textStyle: TextStyle(color: Colors.white),
                  dropdownMenuEntries: list,
                  //menuStyle: MenuStyle(backgroundColor:WidgetStatePropertyAll(Colors.white) , surfaceTintColor: WidgetStatePropertyAll(Colors.white)),
                  hintText: "ABEYAN FOU",
                  //textStyle: TextStyle(color: Colors.black),
                )),
            UsableCard(
              borderRadius: 4,
              iconPath: "assets/images/filter.png",
              text: "Filtrer",
              cardColor: Color(0xff5664d2),
              textColor: Colors.white,
            ),
            Gap(5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  color: Colors.white,
                  elevation: 0,
                  child: Container(
                    height: siz.height * 0.05,
                    width: siz.width * 0.39,
                    padding: const EdgeInsets.all(4.0),
                    child: TextFormField(
                      controller: _dateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'mm/dd/yyyy',
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.calendar_today,
                            size: 18,
                          ),
                          onPressed: () => _selectDate(context),
                        ),
                      ),
                      readOnly: true,
                      onTap: () => _selectDate(context),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  elevation: 0,
                  child: Container(
                    height: siz.height * 0.05,
                    width: siz.width * 0.39,
                    padding: const EdgeInsets.all(4.0),
                    child: TextFormField(
                      controller: _dateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'mm/dd/yyyy',
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.calendar_today,
                            size: 18,
                          ),
                          onPressed: () => _selectDate(context),
                        ),
                      ),
                      readOnly: true,
                      onTap: () => _selectDate(context),
                    ),
                  ),
                )
              ],
            ),
            Gap(5),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DeblocageJourScreen()));
              },
              child: UsableCard(
                borderRadius: 4,
                text: "Déblocages   du jour",
                cardColor: Color(0xff1cbb8c),
                textColor: Colors.white,
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
              height: MediaQuery.of(context).size.height * 0.5,
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
                              decoration:
                                  InputDecoration(border: OutlineInputBorder()),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Afficher par : ",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      UsableCard(
                        text: "CLient",
                        cardColor: Color(0xff1cbb8c),
                        iconPath: "assets/images/profile.png",
                        textColor: Colors.white,
                      ),
                      Gap(8),
                      UsableCard(
                          text: "Marche",
                          cardColor: Color(0xff1cbb8c),
                          iconPath: "assets/images/market icon.png",
                          textColor: Colors.white)
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
                            onTap: () =>
                                showDataItemDialog(context, paginatedItems[i]),
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
                              onTap: () => showDataItemDialog(
                                  context, paginatedItems[i]),
                              Text(paginatedItems[i].beneficiaire)),
                          DataCell(
                              onTap: () => showDataItemDialog(
                                  context, paginatedItems[i]),
                              Text(paginatedItems[i].capital)),
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
                DataItemDetailRow(
                  label: 'Capital:',
                  value: dataItem.capital,
                  textColor: Color(0xfffcb92c),
                ),
                DataItemDetailRow(
                    label: 'Frais de Blocage:', value: dataItem.fraisDeblocage),
                DataItemDetailRow(
                    label: 'Renouvellement:', value: dataItem.renouvellement),
                DataItemDetailRow(
                    label: 'Date de Blocage:', value: dataItem.dateDeblocage),
                DataItemDetailRow(
                    label: 'Number of Days:', value: dataItem.nbreJours),
                DataItemDetailRow(
                  label: 'Status:',
                  value: dataItem.statut,
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

class DataItemDetailRow extends StatelessWidget {
  final String label;
  final String value;
  Color? textColor;

  DataItemDetailRow(
      {Key? key, required this.label, required this.value, this.textColor})
      : super(key: key);

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
            child: Mytext(
              text: value,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}

class DataItem {
  final String beneficiaire;
  final String numeroCompte;
  final String marche;
  final String interet;
  final String capital;
  final String fraisDeblocage;
  final String renouvellement;
  final String dateDeblocage;
  final String dateEcheance;
  final String nbreJours;
  final String statut;
  final String action;
  final String capitalAction;
  final String fraisCarte;
  final String image;

  DataItem({
    required this.fraisCarte,
    required this.capitalAction,
    required this.interet,
    required this.beneficiaire,
    required this.numeroCompte,
    required this.marche,
    required this.dateEcheance,
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
