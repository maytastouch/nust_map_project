import 'package:flutter/material.dart';

class OptionNotifier extends ChangeNotifier {
  late String _selectedOption;

  String get selectedOption => _selectedOption;

  set selectedOption(String option) {
    _selectedOption = option;
    notifyListeners();
  }
}
