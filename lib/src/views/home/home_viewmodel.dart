import 'package:flutter/cupertino.dart';
import 'package:flutter_imc_calculator/src/models/person_model.dart';

class HomeViewModel {
  double _height = 0.0;
  double _weight = 0.0;
  final result = ValueNotifier<String>("");

  void setHeight(String value) => _height = double.tryParse(value) ?? 0.0;
  void setWeight(String value) => _weight = double.tryParse(value) ?? 0.0;

  void calculateIMC() {
    final imcValue = PersonModel(height: _height, weight: _weight).getIMC();
    final imcText = imcValue.toStringAsFixed(2);

    if (imcValue < 18) {
      result.value = "Seu IMC é $imcText, você está magro.";
    } else if (imcValue > 18 && imcValue < 24) {
      result.value = "Seu IMC é $imcText, você está com o peso normal.";
    } else {
      result.value = "Seu IMC é $imcText, você está gordo.";
    }
  }
}
