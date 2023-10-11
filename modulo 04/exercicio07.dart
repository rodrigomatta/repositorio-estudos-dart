import 'dart:io';

void main() {
  print("Informe o valor do seu salário: ");
  String? ValorSalario = stdin.readLineSync();
  double? ValorSalarios = double.tryParse(ValorSalario ?? '');

  if (ValorSalarios == null) {
    print("Valor de salário inválido.");
    return;
  } else if (ValorSalarios > 500) {
    print("Você não tem direito ao aumento de 30%. o seu salário permanescerá no valor de $ValorSalarios");
  } else {
    double CalcuTrinta = ValorSalarios + (ValorSalarios * 0.3);
    print("Você tem direito ao aumento de 30%. A partir de agora, o seu salário passará de RS $ValorSalarios para RS $CalcuTrinta");
  }
}