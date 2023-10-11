import 'dart:io';

void main() {
  stdout.write("Informe o valor do produto: ");
  double? produto = double.tryParse(stdin.readLineSync() ?? '');
  double aumento;

  if (produto == null) {
    print("Valor de saldo inválido.");
    return;
  }

  if (produto < 50) {
    aumento = produto + (produto * 0.05);
  } else if (produto >= 50 && produto < 100) {
    aumento = produto + (produto * 0.1);
  } else {
    aumento = produto + (produto * 0.15);
  }

  if (aumento < 80) {
    print("O produto custa $aumento e o preço é considerado barato!");
  } else if (aumento >= 80 && aumento < 120) {
    print("O produto custa $aumento e o preço é considerado normal!");
  } else if (aumento >= 120 && aumento < 200) {
    print("O produto custa $aumento e o preço é considerado caro!");
  } else {
    print("O produto custa $aumento e o preço é considerado muito caro!");
  }
}