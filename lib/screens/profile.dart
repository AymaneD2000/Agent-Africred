import 'package:africredagent/const/colors.dart';
import 'package:africredagent/const/functions.dart';
import 'package:africredagent/widgets/myText.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller1 = TextEditingController(),
      controller2 = TextEditingController(),
      controller3 = TextEditingController(),
      controller4 = TextEditingController(),
      controller5 = TextEditingController(),
      controller6 = TextEditingController(),
      controller7 = TextEditingController(),
      controller8 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size t = siz(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Container(
                              padding: EdgeInsets.all(t.width * 0.05),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.withOpacity(0.2)),
                              child: Icon(
                                Icons.person,
                                size: t.width * 0.2,
                                color: Colors.grey,
                              ))
                        ],
                      ),
                    ),
                    Gap(t.width * 0.07),
                    Column(
                      children: [
                        Mytext(
                          text: "Djigui Diallo",
                          weight: FontWeight.bold,
                          size: t.width * 0.053,
                        ),
                        Gap(t.width * 0.01),
                        Mytext(text: "ceo@africa@gmail.com"),
                        Gap(t.width * 0.01),
                        Mytext(
                          text: "Poste : Manager",
                          weight: FontWeight.bold,
                          size: t.width * 0.04,
                        ),
                      ],
                    )
                  ],
                ),
                Gap(t.width * 0.02),
                // CreditCardWidget(
                //   cardNumber: 'cardNumber',
                //   expiryDate: 'expiryDate',
                //   cardHolderName: 'cardHolderName',
                //   cvvCode: 'cvvCode',
                //   showBackView: false,
                //   onCreditCardWidgetChange: (CreditCardBrand brand) {},
                //   bankName: 'Name of the Bank',
                //   cardBgColor: Colors.black87,
                //   glassmorphismConfig: Glassmorphism.defaultConfig(),
                //   enableFloatingCard: true,
                //   floatingConfig: FloatingConfig(
                //     isGlareEnabled: true,
                //     isShadowEnabled: true,
                //     shadowConfig: FloatingShadowConfig(),
                //   ),
                //   backgroundImage: 'assets/images/card_bg.png',
                //   //backgroundNetworkImage: 'https://www.xyz.com/card_bg.png',
                //   labelValidThru: 'VALID\nTHRU',
                //   obscureCardNumber: true,
                //   obscureInitialCardNumber: false,
                //   obscureCardCvv: true,
                //   labelCardHolder: 'CARD HOLDER',
                //   // labelValidThru: 'VALID\nTHRU',
                //   cardType: CardType.mastercard,
                //   isHolderNameVisible: false,
                //   height: 175,
                //   textStyle: const TextStyle(color: Colors.yellowAccent),
                //   width: MediaQuery.of(context).size.width,
                //   isChipVisible: true,
                //   isSwipeGestureEnabled: true,
                //   animationDuration: Duration(milliseconds: 1000),
                //   frontCardBorder: Border.all(color: Colors.grey),
                //   backCardBorder: Border.all(color: Colors.grey),
                //   chipColor: Colors.red,
                //   padding: 16,
                //   customCardTypeIcons: [
                //     // CustomCardTypeIcons(
                //     //   cardType: CardType.mastercard,
                //     //   cardImage: Image.asset(
                //     //     'assets/mastercard.png',
                //     //     height: 48,
                //     //     width: 48,
                //     //   ),
                //     // ),
                //   ],
                // ),
                CreditCardWidget(
                    bankName: 'AFRICRED-CARD',
                    cardBgColor: Colors.black,
                    chipColor: Colors.orange[200],
                    // backgroundImage: 'assets/images/card_bg.png',
                    cardType: CardType.mastercard,
                    //enableFloatingCard: true,
                    //glassmorphismConfig: Glassmorphism.defaultConfig(),
                    cardNumber: 'ABF-002-22',
                    expiryDate: '12/12/2020',
                    cardHolderName: 'Djigui Diallo',
                    cvvCode: 'ABF-002-22',
                    showBackView: false,
                    onCreditCardWidgetChange: (v) {}),
                Gap(t.width * 0.03),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: t.width * 0.02,
                          bottom: t.width * 0.02,
                          left: t.width * 0.04,
                          right: t.width * 0.04),
                      decoration: BoxDecoration(
                          color: primaryPurple,
                          borderRadius: BorderRadius.circular(12)),
                      child: Mytext(
                          text: "Informations personnelles",
                          color: Colors.white,
                          size: t.width * 0.05),
                    ),
                    Gap(t.height * 0.02),
                    Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(
                                parent: NeverScrollableScrollPhysics()),
                            shrinkWrap: true,
                            itemCount: 4,
                            itemBuilder: (context, i) {
                              TextEditingController c = TextEditingController();
                              if (i == 0) {
                              } else if (i == 2) {}
                              switch (i) {
                                case 0:
                                  c = controller1;
                                  controller1.text = "Djigui Diallo";
                                  break;
                                case 1:
                                  c = controller2;
                                  controller2.text = 'Masculin';
                                  break;
                                case 2:
                                  c = controller3;
                                  controller3.text = "ceo@africa.com";
                                  break;
                                case 3:
                                  c = controller4;
                                  controller3.text = "ceo@africa.com";
                                  break;
                              }

                              return Container(
                                margin:
                                    EdgeInsets.only(bottom: t.height * 0.01),
                                child: TextField(
                                  controller: c,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                ),
                              );
                            })

                        // Column(
                        //   children: [
                        // TextField(
                        //   decoration: InputDecoration(
                        //       border: OutlineInputBorder(
                        //           borderRadius: BorderRadius.circular(10))),
                        // ),
                        // Gap(t.height * 0.01),
                        //     TextField(
                        //       decoration: InputDecoration(
                        //           border: OutlineInputBorder(
                        //               borderRadius: BorderRadius.circular(10))),
                        //     ),
                        //     Gap(t.height * 0.01),
                        //     TextField(
                        //       decoration: InputDecoration(
                        //           border: OutlineInputBorder(
                        //               borderRadius: BorderRadius.circular(10))),
                        //     ),
                        //     Gap(t.height * 0.01),
                        //     TextField(
                        //       decoration: InputDecoration(
                        //           border: OutlineInputBorder(
                        //               borderRadius: BorderRadius.circular(10))),
                        //     ),
                        //     Gap(t.height * 0.01),
                        //   ],
                        // ),
                        )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
