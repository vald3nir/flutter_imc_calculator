import 'dart:math' as math;

class PersonModel {
  final double height;
  final double weight;

  PersonModel({
    required this.height,
    required this.weight,
  });

  double getIMC() {
    return weight / math.pow(height, 2);
  }
}
