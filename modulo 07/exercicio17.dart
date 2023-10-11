import 'dart:io';
import 'dart:math';

void main() {
  List<List<int>> matriz = List.generate(5, (i) => List.generate(5, (j) => Random().nextInt(51)));

  double somaDiagonal = 0;
  for (int i = 0; i < 5; i++) {
    somaDiagonal += matriz[i][matriz.length - 1 - i];
  }
  double mediaDiagonal = somaDiagonal / 5;

  print("\nMatriz 5 X 5 gerada:");
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write("${matriz[i][j]}\t");
    }
    print("");
  }

  print("\nA média dos elementos da diagonal principal é: ${mediaDiagonal.toStringAsFixed(2)}");
}
