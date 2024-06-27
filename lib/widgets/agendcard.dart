import 'package:africredagent/const/colors.dart';
import 'package:africredagent/widgets/myText.dart';
import 'package:flutter/material.dart';

class Agendcard extends StatelessWidget {
  Agendcard({super.key, required this.icon, required this.number, required this.title});
  String title;
  int number;
  String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: 
        BoxDecoration(
          color: Colors.white, 
          borderRadius: BorderRadius.circular(10)
          ),
      child: Column(
        children: [
        Image.asset(icon),
        Mytext(text: title, color: textPrimaryColor,),
        Mytext(text: "$number", )
      ],
    ),);
  }
}