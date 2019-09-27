import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _imc;

  String calculateIMC() {
    _imc = weight / pow(height / 100, 2);
    return _imc.toStringAsFixed(1);
  }

  String getResult() {
    if (_imc >= 25) {
      return 'Sobrepeso';
    } else if (_imc > 18.5) {
      return 'Normal';
    } else {
      return 'Abaixo do peso';
    }
  }

  String getInterpretation() {
    if (_imc >= 25) {
      return 'Você está acima do peso considerado normal para sua estatura, tente se exercitar mais.\n\n O que pode acontecer:\n Fadiga, má circulação, varizes, infarto, aterosclerose.';
    } else if (_imc > 18.5) {
      return 'Parabéns! Você está dentro do peso considerado normal.\n\n Benefícios disso são:\n Menor risco de doenças cardíacas e vasculares.';
    } else {
      return 'Você está abaixo do peso considerado normal para sua estatura, tente se alimentar com mais saúde.\n\n O que pode acontecer:\n Fadiga, stress, ansiedade.';
    }
  }
}
