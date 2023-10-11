import 'dart:io';

void main() {
  print("Informe o valor do seu salário: ");
  String? ValorSalario = stdin.readLineSync();
  double? ValorSalarios = double.tryParse(ValorSalario ?? '');

  if (ValorSalarios == null) {
    print("Valor de salário inválido.");
    return;
  } else if (ValorSalarios < 300) {
    double CalcuTrintaCinco = ValorSalarios + (ValorSalarios * 0.35);
    print("A partir de agora, o seu salário passará de RS $ValorSalarios para RS $CalcuTrintaCinco");
  } else {
    double CalcuQuinze = ValorSalarios + (ValorSalarios * 0.15);
    print("A partir de agora, o seu salário passará de RS $ValorSalarios para RS $CalcuQuinze");
  }
}