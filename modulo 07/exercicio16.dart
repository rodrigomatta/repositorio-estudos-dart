import 'dart:io';
import 'dart:math';
void main() {
  List<List<int>> matriz = List.generate(10, (i) => List.generate(10, (j) => Random().nextInt(51)));

  double somaDiagonal = 0;
  for (int i = 0; i < 10; i++) {
    somaDiagonal += matriz[i][i];
  }
  double mediaDiagonal = somaDiagonal / 10;

  print("\nMatriz 10 X 10 gerada:");
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      stdout.write("${matriz[i][j]}\t");
    }
    print("");
  }

  print("\nA média dos elementos da diagonal principal é: ${mediaDiagonal.toStringAsFixed(2)}");
}
