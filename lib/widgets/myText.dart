import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytext extends StatelessWidget {
  Mytext(
    {super.key, 
    required this.text, 
    this.size, 
    this.weight, 
    this.align, 
    this.overflow, 
    this.wrap, 
    this.color}
    );
  String text;
  double? size;
  Color? color;
  TextAlign? align;
  bool? wrap;
  TextOverflow? overflow;
  FontWeight? weight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,softWrap: wrap,
      textAlign: align,  
      style:
          GoogleFonts.nunito(
            fontSize: size, 
            fontWeight: weight, 
            color: color)
            );
  }
}