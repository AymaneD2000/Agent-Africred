import 'package:africredagent/const/colors.dart';
import 'package:africredagent/screens/dashboard/dashboard.dart';
import 'package:africredagent/screens/dashboard/line_chart.dart';
import 'package:africredagent/screens/dashboard/pie_chart.dart';
import 'package:africredagent/widgets/myText.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GlobaleState extends StatefulWidget {
  const GlobaleState({super.key});

  @override
  State<GlobaleState> createState() => _GlobaleStateState();
}

class _GlobaleStateState extends State<GlobaleState> {
  @override
  Widget build(BuildContext context) {
    Size siz = MediaQuery.of(context).size;
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Gap(10),
              Mytext(
                text: "ETAT GLOBAL",
                size: 14,
                weight: FontWeight.w800,
                color: Colors.green,
              ),
              Gap(12),
              Container(
                  height: siz.height * 0.5,
                  width: siz.width,
                  // padding: const EdgeInsets.all(8.0),
                  child: LineCharte()),
              Gap(siz.height * 0.08),
              Card(
                color: Colors.white,
                child: Column(
                  children: [
                    const Gap(5),
                    Mytext(
                      text: "Chiffres d'affaire Globaux",
                      color: Colors.black,
                      size: 20,
                      weight: FontWeight.bold,
                    ),
                    const Gap(40),
                    Container(
                        height: siz.height * 0.2,
                        width: siz.width * 0.95,
                        child: PieChartSample()),
                    const Gap(50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        footChart(primaryBlue, "Déblocage"),
                        footChart(primaryOrange, "Encours Global"),
                        footChart(primaryGreen, "Interet"),
                        footChart(primaryPurple, "Capital")
                      ],
                    ),
                    Gap(5)
                  ],
                ),
              ),
              // Center(
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(
              //         backgroundColor: primaryPurple,
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(10))),
              //     onPressed: () {
              //       // Navigator.push(context,
              //       //     MaterialPageRoute(builder: (context) {
              //       //   return GlobaleState();
              //       // }));
              //     },
              //     child: Mytext(
              //       text: 'ÉTAT GLOBAL',
              //       color: Colors.white,
              //     ),
              //   ),
              // )
              // ,
            ],
          ),
        ),
      ),
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
