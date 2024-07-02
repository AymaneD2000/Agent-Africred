import 'package:africredagent/const/colors.dart';
import 'package:africredagent/widgets/myText.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    Size siz = MediaQuery.of(context).size;
    double btweenSize = siz.height * 0.01;
    return Scaffold(
      appBar: AppBar(
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
                      value: 'PAR DATE',
                      items: [
                        DropdownMenuItem(
                            value: 'PAR DATE', child: Mytext(text: 'PAR DATE')),
                        DropdownMenuItem(
                            value: 'DATES ENTRES',
                            child: Mytext(text: 'DATES ENTRES'))
                      ],
                      onChanged: (v) {}),
                ],
              ),
              // InkWell(
              //   onTap: () {
              //     DropdownMenu(dropdownMenuEntries: [
              //       DropdownMenuEntry(value: "value", label: "label"),
              //       DropdownMenuEntry(value: "value", label: "label")
              //     ]);
              //   },
              //   child: Container(
              //     padding: EdgeInsets.only(
              //         top: siz.width * 0.02,
              //         bottom: siz.width * 0.02,
              //         right: siz.width * 0.035,
              //         left: siz.width * 0.035),
              //     decoration: BoxDecoration(color: primaryPurple),
              //     child: Mytext(
              //       text: "FILTRER",
              //       color: Colors.white,
              //       size: 18,
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
