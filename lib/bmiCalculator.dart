import 'dart:math';

class BMICalculatorBrain {
  final double height;
  final double weight;
  BMICalculatorBrain({required this.weight, required this.height});
  double _bmi = 0;
  String calcBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than average body weight, try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'Your body weight is perfectly within the boundaries. Great Job';
    } else {
      return 'You have a lower than average body weight. Try to have a more healthy and nutritious diet.';
    }
  }
}
