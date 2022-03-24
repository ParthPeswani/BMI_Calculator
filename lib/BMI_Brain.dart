import 'dart:math';

class Brain {
  final int Bheight;
  final int Bweight;
  double _bmi;
  Brain({this.Bheight, this.Bweight}) {}
  String Calculator() {
    _bmi = Bweight / pow(Bheight / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'km khaa';
    } else if (_bmi > 18.5) {
      return 'good job';
    } else {
      return 'khaale patle';
    }
  }
}
