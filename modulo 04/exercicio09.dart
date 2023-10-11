import 'dart:io';

void main() {
  stdout.write("Informe o valor do seu saldo médio: ");
  double? ValorMedio = double.tryParse(stdin.readLineSync() ?? '');
  
  if (ValorMedio == null) {
    print("Valor de saldo inválido.");
    return;
  } else if (ValorMedio < 200) {
    double CalcuDez = (ValorMedio * 0.1);
    print("O seu saldo médio é de RS $ValorMedio, e o valor do crédito disponivel é de RS $CalcuDez");
  } else if (ValorMedio >= 200 && ValorMedio < 300) {
    double CalcuVinte = (ValorMedio * 0.2);
    print("O seu saldo médio é de RS $ValorMedio, e o valor do crédito disponivel é de RS $CalcuVinte");
  } else if (ValorMedio >= 300 && ValorMedio < 400) {
    double CalcuVinteCinco = (ValorMedio * 0.25);
    print("O seu saldo médio é de RS $ValorMedio, e o valor do crédito disponivel é de RS $CalcuVinteCinco");
  } else {
    double CalcuTrinta = (ValorMedio * 0.3);
    print("O seu saldo médio é de RS $ValorMedio, e o valor do crédito disponivel é de RS $CalcuTrinta");
  }
}