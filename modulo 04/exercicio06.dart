import 'dart:math';
import 'dart:io';

void main() {
  print("Informe o valor 1: ");
  String? input1 = stdin.readLineSync();
  print("Informe o valor 2: ");
  String? input2 = stdin.readLineSync();

  num value1 = double.tryParse(input1 ?? "0.0") ?? 0.0;
  num value2 = double.tryParse(input2 ?? "0.0") ?? 0.0;

  int escolha;

  do {
    print("Selecione uma opção:");
    print("1. Calcule o valor de $input1 elevado a $input2: ");
    print("2. Calcular Raiz Quadrada dos dois números");
    print("3. Calcular Raiz Cúbica de cada um dos números");
    print("0. Sair");
    print("");

    String? input = stdin.readLineSync();
    escolha = int.tryParse(input ?? "-1") ?? -1;

    switch (escolha) {
      case 1:
        String elevate = (pow(value1, value2)).toStringAsFixed(2);
        print("O valor de $input1 elevado sobre $input2 é de: $elevate");
        print("");

        break;
      case 2:
        String raizQuadrada = (sqrt(value1)).toStringAsFixed(2);;
        String raizQuadrada2 = (sqrt(value2)).toStringAsFixed(2);;
        print("A raiz quadrada de $input1 é $raizQuadrada e a raiz quadrada de $input2 é $raizQuadrada2 ");
        print("");

        break;
      case 3:
        String raizCubica = (pow(value1, 1 / 3)).toStringAsFixed(2);
        String raizCubica2 = (pow(value2, 1 / 3)).toStringAsFixed(2);
        print("A raiz Cúbica de $input1 é $raizCubica e a raiz Cúbica de $input2 é $raizCubica2");
        print("");

        break;
      case 0:
        print("Saindo do programa.");
        print("");

        break;
      default:
        print("Opção inválida. Informe outra opção.");
        print("");
    }
  } while (escolha != 0);
}
