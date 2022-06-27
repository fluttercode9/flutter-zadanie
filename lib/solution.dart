import 'package:flutter/widgets.dart';

class Solution with ChangeNotifier {
  String _output = "";

  String get chosenNumber {
    return _output;
  }

  // selecting the right number
  void selectNumber(String userInput) {
    _output = "";
    var valuesArr = _convertInput(userInput);
    try {
      if (_isOdd(valuesArr.sublist(0, 3))) {
        _output =
            valuesArr.firstWhere((element) => element % 2 != 0).toString();
      } else {
        _output =
            valuesArr.firstWhere((element) => element % 2 == 0).toString();
      }
    } catch (_) {
      if (_output == "") {
        _output = "brak";
      }
    }
  }

// check if the number we are looking for is odd
  bool _isOdd(List<int> arr) {
    List odd = arr.where((element) => element % 2 == 0).toList();

    return odd.length > 1;
  }

// converting user input to a list of integers
  List<int> _convertInput(String userInput) {
    return userInput.split(',').map((e) => int.parse(e.trim())).toList();
  }

//basic form validation
  String? validateForm(String? value) {
    var pattern = r"^\s*-?\d+(\,\s*-?\d+\s*){2,}$";
    var result = RegExp(pattern, caseSensitive: false).hasMatch(value!);

    return !result
        ? '*Wprowadź poprawne warości np : 1, 3, 5, 2\n*Minimum 3 liczby całkowite'
        : null;
  }
}
