import 'dart:io';

void main() {
  double totalAVista = 0;
  double totalPrazo = 0;
  double valorPrimeiraPrestacao = 0;

  for (int i = 1; i <= 15; i++) {
    stdout.write("Informe o código da transação (V para à vista, P para a prazo) da transação $i:");
    String codigo = stdin.readLineSync()!;
    stdout.write("Informe o valor da transação $i:");
    double valor = double.parse(stdin.readLineSync()!);

    if (codigo.toUpperCase() == "V") {
      totalAVista += valor;
    } else if (codigo.toUpperCase() == "P") {
      totalPrazo += valor;
      if (i == 1) {
        valorPrimeiraPrestacao = valor / 3;
      }
    }
  }

  double valorTotalCompras = totalAVista + totalPrazo;

  print("Valor total das compras à vista: $totalAVista");
  print("Valor total das compras a prazo: $totalPrazo");
  print("Valor total das compras efetuadas: $valorTotalCompras");
  print("Valor da primeira prestação das compras a prazo: $valorPrimeiraPrestacao");
}