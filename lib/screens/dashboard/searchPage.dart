import 'package:africredagent/const/colors.dart';
import 'package:africredagent/screens/dashboard/globale_state.dart';
import 'package:africredagent/widgets/myText.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({super.key});

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  Map<String, String> item = {
    'Total Recouvrement & Frais': "0 CFA",
    'Total capital recouvré': "0 CFA",
    'Total intérêt net recouvré': "0 CFA",
    'Total épargne recouvrée': "0 CFA",
    'Total assurance recouvrée': "0 CFA",
    'Total frais déblocage': "0 CFA",
    'Total frais de carte': "0 CFA",
    'Total montant de déblocage': "0 CFA",
    'Solde épargne': "0 CFA",
    "Solde tontine": "0 CFA",
    "Caisse": "0 CFA",
  };
  Map<String, String> item2 = {
    'Nouveaux comptes': "0",
    "Agents de terrain": "3",
    'Marché': "19",
    "Banque": "0 CFA",
    "Trésorie": "0 CFA",
  };

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
  Widget build(BuildContext context) {
    Size siz = MediaQuery.of(context).size;
    List<String> list = [];
    for (int i = 0; i < item.length; i++) {
      var l = List.generate(item.length, (i) {
        list.add(item.keys.elementAt(i));
      });
    }
    List<Widget> boxes = [
      DashCard(siz, false,
          title: list[0],
          title1: "Aujourd'hui",
          title2: "Hier",
          title3: "Avant-hier",
          textColor: Colors.white,
          boxColor: primaryPurple,
          icon: Icons.balance,
          iconColor: Colors.white),
      DashCard(siz, false,
          title: list[1],
          title1: "Aujourd'hui",
          title2: "Hier",
          title3: "Avant-hier",
          textColor: Colors.black,
          boxColor: Colors.white,
          icon: Icons.credit_card,
          iconColor: primaryPurple),
      DashCard(siz, false,
          title: list[2],
          title1: "Aujourd'hui",
          title2: "Hier",
          title3: "Avant-hier",
          textColor: Colors.black,
          boxColor: Colors.white,
          icon: Icons.business_outlined,
          iconColor: primaryPurple),
      DashCard(siz, false,
          title: list[3],
          title1: "J-0",
          title2: "J-1",
          title3: "J-2",
          textColor: Colors.black,
          boxColor: Colors.white,
          icon: Icons.arrow_circle_up_sharp,
          iconColor: primaryPurple),
      DashCard(siz, false,
          title: list[4],
          title1: "J-0",
          title2: "J-1",
          title3: "J-2",
          textColor: Colors.black,
          boxColor: Colors.white,
          icon: Icons.wallet,
          iconColor: primaryPurple),
      DashCard(siz, false,
          title: list[5],
          title1: "J-0",
          title2: "J-1",
          title3: "J-2",
          textColor: Colors.black,
          boxColor: Colors.white,
          icon: Icons.credit_card,
          iconColor: primaryPurple),
      DashCard(siz, false,
          title: list[6],
          title1: "Aujourd'hui",
          title2: "Hier",
          title3: "Avant-hier",
          textColor: Colors.white,
          boxColor: primaryPurple,
          icon: Icons.handshake,
          iconColor: Colors.white),
      DashCard(siz, true,
          title: list[7],
          title1: "J-0",
          title2: "J-1",
          title3: "J-2",
          textColor: Colors.white,
          boxColor: primaryPurple,
          icon: Icons.grid_view,
          iconColor: Colors.white),
      DashCard(siz, true,
          title: list[8],
          title1: "J-0",
          title2: "J-1",
          title3: "J-2",
          textColor: Colors.white,
          boxColor: primaryGrey,
          icon: Icons.grid_view,
          iconColor: Colors.white),
      DashCard(siz, true,
          title: list[9],
          title1: "J-0",
          title2: "J-1",
          title3: "J-2",
          textColor: Colors.white,
          boxColor: primaryGrey,
          icon: Icons.grid_view,
          iconColor: Colors.white),
      DashCard(siz, true,
          title: list[10],
          title1: "J-0",
          title2: "J-1",
          title3: "J-2",
          textColor: Colors.white,
          boxColor: primaryBlue,
          icon: Icons.grid_view,
          iconColor: Colors.white),
    ];
    double btweenSize = siz.height * 0.01;
    return Scaffold(
      backgroundColor: bckgr,
      appBar: AppBar(
        backgroundColor: bckgr,
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
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Mytext(
                  text: "AUJOURD'HUI, LE 27-06-2024",
                  size: 13,
                  weight: FontWeight.w800,
                  color: Colors.green,
                ),
                Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Start Date',
                          prefixIcon: Icon(Icons.calendar_today),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'End Date',
                          prefixIcon: Icon(Icons.calendar_today),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryPurple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return GlobaleState();
                    }));
                  },
                  child: Mytext(
                    text: 'ÉTAT GLOBAL',
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                GridView.builder(
                    physics: const BouncingScrollPhysics(
                        parent: NeverScrollableScrollPhysics()),
                    shrinkWrap: true,
                    itemCount: item.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: siz.height * 0.00001,
                        childAspectRatio: 0.1,
                        mainAxisExtent: siz.height * 0.14,
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      Color textColor = Colors.white;
                      Color boxColor = Colors.white;
                      if (index == 0 || index == 7) {
                        textColor = Colors.white;
                        boxColor = primaryPurple;
                      } else if (index > 0 && index < 7) {
                        textColor = Colors.black;
                        boxColor = Colors.white;
                      } else if (index == 8 || index == 9) {
                        textColor = Colors.white;
                        boxColor = primaryGrey;
                      } else {
                        textColor = Colors.white;
                        boxColor = primaryBlue;
                      }
                      String key = item.keys.elementAt(index);
                      String value = item[key]!;
                      return InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(child: boxes[index]),
                                  ],
                                );
                              });
                        },
                        child: Center(
                          child: Card(
                            color: boxColor,
                            child: ListTile(
                              title: Mytext(
                                text: key,
                                color: textColor,
                                weight: FontWeight.w600,
                              ),
                              subtitle: Mytext(
                                text: value,
                                color: textColor,
                                weight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),

                Gap(3),
                Mytext(
                  text: "ADMINISTRATION",
                  size: 15,
                  weight: FontWeight.w800,
                  align: TextAlign.start,
                )
                // const Card(
                //   child: ListTile(
                //     title: Text('Total Recouvrement & Frais'),
                //     subtitle: Text('0 CFA'),
                //     trailing: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Icon(Icons.person),
                //         Text('3'),
                //       ],
                //     ),
                //   ),
                // ),
                // const Card(
                //   child: ListTile(
                //     title: Text('Total capital recouvré'),
                //     subtitle: Text('0 CFA'),
                //     trailing: Column(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Icon(Icons.store),
                //         Text('3'),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),

      // SingleChildScrollView(
      //   child: Padding(
      //     padding: EdgeInsets.all(siz.width * 0.05),
      //     child: Column(
      //       children: [
      //         Mytext(
      //           text: "AUJOURD'HUI, LE 27-06-2024",
      //           size: 13,
      //           weight: FontWeight.w800,
      //           color: Colors.green,
      //         ),
      //         Gap(btweenSize),
      //         Row(
      //           children: [
      //             Card(
      //               color: Colors.white,
      //               elevation: 0,
      //               child: Container(
      //                 //height: siz.height * 0.07,
      //                 width: siz.width * 0.7,
      //                 padding: const EdgeInsets.all(4.0),
      //                 child: TextFormField(
      //                   controller: _dateController,
      //                   decoration: InputDecoration(
      //                     border: InputBorder.none,
      //                     hintText: 'mm/dd/yyyy',
      //                     suffixIcon: IconButton(
      //                       icon: const Icon(Icons.calendar_today),
      //                       onPressed: () => _selectDate(context),
      //                     ),
      //                   ),
      //                   readOnly: true,
      //                   onTap: () => _selectDate(context),
      //                 ),
      //               ),
      //             ),
      //             const Gap(8),
      //             InkWell(
      //               onTap: () {
      //                 Navigator.push(context,
      //                     MaterialPageRoute(builder: (context) {
      //                   return Searchpage();
      //                 }));
      //               },
      //               child: Container(
      //                 height: siz.height * 0.07,
      //                 width: siz.height * 0.07,
      //                 decoration: BoxDecoration(
      //                     color: primaryPurple,
      //                     borderRadius: BorderRadius.circular(10)),
      //                 child: const Icon(Icons.search),
      //               ),
      //             )
      //           ],
      //         ),
      //         Gap(btweenSize),
      //         Card(
      //           color: Colors.white,
      //           elevation: 0,
      //           child: Container(
      //             //height: siz.height * 0.07,
      //             width: siz.width * 0.7,
      //             padding: const EdgeInsets.all(4.0),
      //             child: TextFormField(
      //               controller: _dateController,
      //               decoration: InputDecoration(
      //                 border: InputBorder.none,
      //                 hintText: 'mm/dd/yyyy',
      //                 suffixIcon: IconButton(
      //                   icon: const Icon(Icons.calendar_today),
      //                   onPressed: () => _selectDate(context),
      //                 ),
      //               ),
      //               readOnly: true,
      //               onTap: () => _selectDate(context),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Mytext(
                    text: "0 CFA",
                    color: textColor,
                    size: siz.width * 0.07,
                  ),
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
                            text: "Agents en charge : ",
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
                              text: "3",
                              color: primaryGreen,
                              weight: FontWeight.bold,
                              size: siz.width * 0.045,
                            ),
                          )
                        ],
                      ),
                      Gap(siz.width * 0.012),
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
}
