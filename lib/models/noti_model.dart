import 'package:flutter/material.dart';

class NotiModel extends ChangeNotifier {
  String text1 = 'Text 1 in NotiModel';
  String _text2 = 'Text 2 in NotiModel';
  String get text2 => _text2;
  set text2(String text2) {
    _text2 = text2;
    notifyListeners();
  }
}
