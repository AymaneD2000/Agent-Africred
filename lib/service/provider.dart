import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier {
  String selected = '1er TRIMESTRE';
  void onSelect(String v) {
    selected = v;
    notifyListeners();
  }
}
