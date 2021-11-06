import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain(this.height, this.weight);

  String getBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    var bmi = _bmi;

    if (bmi > 25) {
      return "Overweight";
    }

    if (bmi < 18.5) {
      return "Underweight";
    }

    return "Good weight";
  }

  String getInterpretation() {
    var bmi = _bmi;

    if (bmi > 25) {
      return "Exercise more";
    }

    if (bmi < 18.5) {
      return "Eat more";
    }

    return "You are doing great";
  }
}
