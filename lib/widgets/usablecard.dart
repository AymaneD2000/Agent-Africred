import 'package:africredagent/widgets/myText.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UsableCard extends StatelessWidget {
    UsableCard({
    Key? key, 
    required this.text, 
    this.textColor, 
    this.fontWeight, 
    this.iconPath, 
    this.textAlign, 
    this.textSize,
    this.cardColor,
    this.borderRadius
  }) : super(key: key);
    Color? cardColor;
Color? textColor;
String text;
String? iconPath;
double? textSize;
TextAlign? textAlign;
FontWeight? fontWeight;
double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        boxShadow: [BoxShadow()],
        borderRadius: borderRadius != null? BorderRadius.circular(borderRadius!):null,
        color: cardColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (iconPath != null) Image.asset(iconPath!, height: 15,color: Colors.white,),
          Gap(5),
          Mytext(text: text,size: textSize,align: textAlign,weight: fontWeight,color: textColor)
        ],
      ),
    );
  }
}

// import 'package:africredagent/widgets/myText.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';

// class UsableCard extends StatelessWidget {
//   // Constructor to initialize the card properties
  // UsableCard({
  //   Key? key, 
  //   required this.text, 
  //   this.textColor, 
  //   this.fontWeight, 
  //   this.iconPath, 
  //   this.textAlign, 
  //   this.textSize,
  //   this.cardColor,
  //   this.borderRadius
  // }) : super(key: key);

// //   // Properties for customization
// Color? cardColor;
// Color? textColor;
// String text;
// String? iconPath;
// double? textSize;
// TextAlign? textAlign;
// FontWeight? fontWeight;
// double? borderRadius;

//   @override
//   Widget build(BuildContext context) {
//     return TextButton.icon(
//       style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(cardColor)),
//       onPressed: (){},
//       label: 
//         Mytext(
//           text: text,
//           size: textSize,
//           align: textAlign,
//           weight: fontWeight,
//           color: textColor),
//           icon: iconPath != null? Image.asset(iconPath!, height: 15,):null,
//           );
//   }
// }
