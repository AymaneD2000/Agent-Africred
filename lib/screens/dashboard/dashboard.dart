import 'package:africredagent/const/colors.dart';
import 'package:africredagent/screens/dashboard/chart.dart';
import 'package:africredagent/screens/dashboard/pie_chart.dart';
import 'package:africredagent/screens/dashboard/verification_page.dart';
import 'package:africredagent/service/provider.dart';
import 'package:africredagent/widgets/myText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final TextEditingController _dateController = TextEditingController();
  DateTime? _selectedDate;

  List<String> list = <String>[
    '1er TRIMESTRE',
    '2eme TRIMESTRE',
    '3eme TRIMESTRE',
    '4eme TRIMESTRE'
  ];

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  String selected = '1er TRIMESTRE';
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
  Widget build(BuildContext context) {
    Size siz = MediaQuery.of(context).size;
    double btweenSize = siz.height * 0.01;
    return Scaffold(
      backgroundColor: bckgr,
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(10),
            Mytext(
              text: "AUJOURD'HUI, LE 27-06-2024",
              size: 13,
              weight: FontWeight.w800,
              color: Colors.green,
            ),
            const Gap(15),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Card(
                    color: Colors.white,
                    elevation: 0,
                    child: Container(
                      //height: siz.height * 0.07,
                      width: siz.width * 0.7,
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
                  const Gap(8),
                  Container(
                    height: siz.height * 0.07,
                    width: siz.height * 0.07,
                    decoration: BoxDecoration(
                        color: primaryPurple,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(Icons.search),
                  )
                ],
              ),
            ),
            Gap(siz.height * 0.001),
            DashBordBoxe(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      String local = selected;

                      return Consumer<DataProvider>(
                          builder: (context, snapshot, child) {
                        return AlertDialog(
                          title: Row(
                            children: [
                              Mytext(text: "TRIMESTRE"),
                              const Spacer(),
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.close))
                            ],
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              DropdownButton<String>(
                                value: snapshot.selected,
                                icon: const Icon(Icons.arrow_drop_down),
                                elevation: 16,
                                style:
                                    const TextStyle(color: Colors.deepPurple),
                                underline: Container(
                                  height: 2,
                                  color: Colors.deepPurpleAccent,
                                ),
                                onChanged: (String? value) {
                                  // This is called when the user selects an item.
                                  snapshot.onSelect(value!);
                                  setState(() {
                                    local = value!;
                                    selected = value;
                                  });
                                },
                                items: list.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              )
                              // TextField(
                              //   decoration: InputDecoration(
                              //       suffixIcon: Icon(Icons.arrow_drop_down),
                              //       hintText: "1er TRIMESTRE",
                              //       border: OutlineInputBorder(
                              //           borderRadius: BorderRadius.circular(10))),
                              // )
                            ],
                          ),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Mytext(text: "Annuler")),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: primaryBlue),
                                onPressed: () {},
                                child: Mytext(text: "Rapport"))
                          ],
                        );
                      });
                    });
                print("dialog");
              },
              siz: siz,
              text: "RAPPORT",
              boxColor: primaryBlue,
            ),
            const Gap(5),
            DashBordBoxe(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const VerificationPage();
                }));
              },
              siz: siz,
              text: "VERIFICATION",
              boxColor: primaryPurple,
            ),
            const Gap(10),
            DashBordBoxe(
              siz: siz,
              text: "PERFORMANCE",
              boxColor: primaryBlue,
            ),
            const Gap(5),
            DashBordBoxe(
              siz: siz,
              text: "ETAT GLOBAL",
              boxColor: primaryPurple,
            ),
            const Gap(10),
            const DashSecondBox(
              title: "Nouveaux comptes",
              value: '0',
              icon: Icons.credit_card_sharp,
            ),
            const DashSecondBox(
              title: "Agents de terrain",
              value: '3',
              icon: Icons.group,
            ),
            const DashSecondBox(
              title: "Agents de terrain",
              value: '3',
              icon: Icons.group,
            ),
            const DashSecondBox(
              title: "Agents de terrain",
              value: '3',
              icon: Icons.group,
            ),
            const Gap(15),
            Container(
                padding: const EdgeInsets.all(10),
                height: siz.height * 0.5,
                child: Chart4()),
            const Gap(5),
            Card(
              color: Colors.white,
              child: Column(
                children: [
                  const Gap(5),
                  Mytext(
                    text: "Chiffres d'affaire 2024",
                    color: Colors.black,
                    size: 20,
                    weight: FontWeight.bold,
                  ),
                  const Gap(40),
                  Container(
                      height: siz.height * 0.2,
                      width: siz.width * 0.95,
                      child: PieChartSample()),
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      footChart(primaryBlue, "Déblocage"),
                      footChart(primaryOrange, "Encours Global"),
                      footChart(primaryGreen, "Interet"),
                      footChart(primaryPurple, "Capital")
                    ],
                  )
                ],
              ),
            ),
            Gap(btweenSize),
            DashCard(siz, false,
                title: "Total Recouvrement & Frais ",
                title1: "Aujourd'hui",
                title2: "Hier",
                title3: "Avant-hier",
                textColor: Colors.white,
                boxColor: primaryPurple,
                icon: Icons.balance,
                iconColor: Colors.white),
            Gap(btweenSize),
            DashCard(siz, false,
                title: "Recouvrement capital",
                title1: "Aujourd'hui",
                title2: "Hier",
                title3: "Avant-hier",
                textColor: Colors.black,
                boxColor: Colors.white,
                icon: Icons.credit_card,
                iconColor: primaryPurple),
            Gap(btweenSize),
            DashCard(siz, false,
                title: "Recouvrement interêt net",
                title1: "Aujourd'hui",
                title2: "Hier",
                title3: "Avant-hier",
                textColor: Colors.black,
                boxColor: Colors.white,
                icon: Icons.business_outlined,
                iconColor: primaryPurple),
            Gap(btweenSize),
            DashCard(siz, false,
                title: "Recouvrement épargne",
                title1: "J-0",
                title2: "J-1",
                title3: "J-2",
                textColor: Colors.black,
                boxColor: Colors.white,
                icon: Icons.arrow_circle_up_sharp,
                iconColor: primaryPurple),
            Gap(btweenSize),
            DashCard(siz, false,
                title: "Frais de déblocage",
                title1: "J-0",
                title2: "J-1",
                title3: "J-2",
                textColor: Colors.black,
                boxColor: Colors.white,
                icon: Icons.wallet,
                iconColor: primaryPurple),
            Gap(btweenSize),
            DashCard(siz, false,
                title: "Frais de carte",
                title1: "J-0",
                title2: "J-1",
                title3: "J-2",
                textColor: Colors.black,
                boxColor: Colors.white,
                icon: Icons.credit_card,
                iconColor: primaryPurple),
            Gap(btweenSize),
            DashCard(siz, false,
                title: "Montant de déblocage",
                title1: "Aujourd'hui",
                title2: "Hier",
                title3: "Avant-hier",
                textColor: Colors.white,
                boxColor: primaryPurple,
                icon: Icons.handshake,
                iconColor: Colors.white),
            Gap(btweenSize),
            DashCard(siz, true,
                title: "Assurance",
                title1: "J-0",
                title2: "J-1",
                title3: "J-2",
                textColor: Colors.black,
                boxColor: Colors.white,
                icon: Icons.grid_view,
                iconColor: Colors.black),
            Gap(btweenSize + 10),
            DashCard1(siz, false,
                textColor: Colors.white,
                boxColor: primaryGrey,
                icon: Icons.arrow_upward,
                iconColor: Colors.white,
                title: "Solde épargne"),
            Gap(btweenSize - 2),
            DashCard1(siz, false,
                textColor: Colors.white,
                boxColor: primaryGrey,
                icon: Icons.compare_arrows_rounded,
                iconColor: Colors.white,
                title: "Solde tontine"),
            Gap(btweenSize - 2),
            DashCard1(siz, true,
                textColor: Colors.white,
                boxColor: Colors.blue,
                icon: Icons.money,
                iconColor: Colors.white,
                title: "Caisse"),
          ],
        ),
      ),
    );
  }

  Container DashCard1(
    Size siz,
    bool isOther, {
    required Color textColor,
    required Color boxColor,
    required IconData icon,
    required iconColor,
    required String title,
  }) {
    return Container(
      margin: EdgeInsets.only(left: siz.width * 0.04, right: siz.width * 0.04),
      padding: EdgeInsets.all(siz.height * 0.02),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: boxColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Mytext(
                text: title,
                color: textColor,
              ),
              Icon(
                icon,
                color: iconColor,
              )
            ],
          ),
          Gap(siz.height * 0.02),
          Container(
              margin: EdgeInsets.only(right: siz.width * 0.04),
              child: Column(
                children: [
                  Gap(siz.height * 0.01),
                  Container(
                    height: 1,
                    width: siz.width,
                    color: textColor.withOpacity(0.9),
                  ),
                  Gap(siz.height * 0.01),
                  !isOther
                      ? Row(
                          children: [
                            Row(
                              children: [
                                Mytext(
                                  text: "Nombre de client : ",
                                  color: textColor,
                                  size: 15,
                                ),
                                Container(
                                  padding: EdgeInsets.all(siz.width * 0.008),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: primaryGreen.withOpacity(0.3),
                                  ),
                                  child: Mytext(
                                    text: "0 CFA",
                                    color: primaryGreen,
                                    weight: FontWeight.bold,
                                    size: siz.width * 0.045,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            Row(
                              children: [
                                Mytext(
                                  text: "Enc : ",
                                  color: textColor,
                                  size: 15,
                                ),
                                Container(
                                  padding: EdgeInsets.all(siz.width * 0.008),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: primaryGreen.withOpacity(0.3),
                                  ),
                                  child: Mytext(
                                    text: "0 CFA",
                                    color: primaryGreen,
                                    weight: FontWeight.bold,
                                    size: siz.width * 0.045,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Mytext(
                                  text: "Déc : ",
                                  color: textColor,
                                  size: 15,
                                ),
                                Container(
                                  padding: EdgeInsets.all(siz.width * 0.008),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: primaryGreen.withOpacity(0.3),
                                  ),
                                  child: Mytext(
                                    text: "0 CFA",
                                    color: primaryGreen,
                                    weight: FontWeight.bold,
                                    size: siz.width * 0.045,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                  Gap(siz.height * 0.003),
                ],
              ))
        ],
      ),
    );
  }

  Container DashCard(Size siz, bool isOther,
      {required Color textColor,
      required Color boxColor,
      required IconData icon,
      required iconColor,
      required String title,
      title1,
      title2,
      title3}) {
    return Container(
      margin: EdgeInsets.only(left: siz.width * 0.04, right: siz.width * 0.04),
      padding: EdgeInsets.all(siz.height * 0.02),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: boxColor,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Mytext(
                text: title,
                color: textColor,
              ),
              Icon(
                icon,
                color: iconColor,
              )
            ],
          ),
          Gap(siz.height * 0.02),
          Container(
              margin: EdgeInsets.only(right: siz.width * 0.04),
              child: Column(
                children: [
                  CardSubElement(siz, title1, isOther, tColor: textColor),
                  CardSubElement(siz, title2, isOther, tColor: textColor),
                  CardSubElement(siz, title3, isOther, tColor: textColor),
                  Gap(siz.height * 0.01),
                  Container(
                    height: 1,
                    width: siz.width,
                    color: textColor.withOpacity(0.9),
                  ),
                  Gap(siz.height * 0.01),
                  Row(
                    children: [
                      Row(
                        children: [
                          Mytext(
                            text: "Prévision : ",
                            color: textColor,
                            size: 15,
                          ),
                          Container(
                            padding: EdgeInsets.all(siz.width * 0.008),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: primaryGreen.withOpacity(0.3),
                            ),
                            child: Mytext(
                              text: "0 CFA",
                              color: primaryGreen,
                              weight: FontWeight.bold,
                              size: siz.width * 0.045,
                            ),
                          )
                        ],
                      ),
                      Gap(siz.width * 0.012),
                      Container(
                        height: siz.height * 0.02,
                        width: 1.5,
                        color: textColor.withOpacity(0.8),
                      ),
                      Gap(siz.width * 0.012),
                      Row(
                        children: [
                          Mytext(
                            text: "AB-SUGU : ",
                            color: textColor,
                            size: 15,
                          ),
                          Container(
                            padding: EdgeInsets.all(siz.width * 0.008),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: primaryGreen.withOpacity(0.3),
                            ),
                            child: Mytext(
                              text: "0 CFA",
                              color: primaryGreen,
                              weight: FontWeight.bold,
                              size: siz.width * 0.045,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Gap(siz.height * 0.003),
                ],
              ))
        ],
      ),
    );
  }

  Row CardSubElement(Size siz, String title, bool isOther,
      {required Color tColor}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Mytext(
          text: "$title : 0 CFA",
          color: tColor,
        ),
        Row(
          children: [
            !isOther
                ? Icon(
                    Icons.arrow_downward,
                    color: Colors.red,
                    size: siz.height * 0.02,
                  )
                : Icon(
                    Icons.arrow_forward,
                    color: primaryPurple,
                    size: siz.height * 0.02,
                  ),
            !isOther ? Mytext(text: "0 %", color: tColor) : Container()
          ],
        )
      ],
    );
  }

  Row footChart(Color color, String text) {
    return Row(
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(20)),
        ),
        const Gap(3),
        Mytext(
          text: text,
          size: 12,
        )
      ],
    );
  }
}

class DashSecondBox extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  const DashSecondBox({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 6, right: 6, top: 4),
      child: Card(
        color: Colors.white,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Mytext(
                    text: title,
                    size: 16,
                  ),
                  const Gap(7),
                  Mytext(
                    text: value,
                    size: 16,
                    weight: FontWeight.w700,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    icon,
                    color: primaryPurple,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DashBordBoxe extends StatelessWidget {
  final Color boxColor;
  final String text;
  final void Function()? onTap;
  const DashBordBoxe({
    super.key,
    required this.siz,
    required this.boxColor,
    required this.text,
    this.onTap,
  });

  final Size siz;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: siz.width * 0.7,
            height: siz.height * 0.05,
            decoration: BoxDecoration(
                color: boxColor, borderRadius: BorderRadius.circular(7)),
            child: Center(
              child: Mytext(
                text: text,
                align: TextAlign.center,
                size: 17,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
