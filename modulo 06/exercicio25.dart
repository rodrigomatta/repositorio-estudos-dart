import 'dart:io';

void main() {
  List<double> lista = [];
  double maiorValor = 0;

  for (int i = 0; i < 15; i++) {
    stdout.write("Digite o valor da posição $i: ");
    double valor = double.parse(stdin.readLineSync()!);
    lista.add(valor);
  }

  for (int i = 1; i < lista.length; i++) {
    if (lista[i] > maiorValor) {
      maiorValor = lista[i];
    }
  }

  for (int i = 0; i < lista.length; i++) {
    lista[i] = lista[i] / maiorValor; 
  }

  print("Lista após a divisão pelo maior valor informado:");
  for (int i = 0; i < lista.length; i++) {
    print("Resultado da posição $i na lista: ${lista[i].toStringAsFixed(2)}");
  }
}
