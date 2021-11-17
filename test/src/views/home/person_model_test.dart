import 'package:flutter_imc_calculator/src/models/person_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('getIMC deve retornar 21.', () {
    final person = PersonModel(height: 1.84, weight: 70);
    expect(person.getIMC().round(), 21);
  });
}
