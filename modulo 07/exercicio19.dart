import 'dart:io';
import 'dart:math';
void main() {
  List<List<int>> matriz = List.generate(5, (i) => List.generate(5, (j) => Random().nextInt(51)));

  print("\nMatriz 5 X 5 gerada:");
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write("${matriz[i][j]}\t");
    }
    print("");
  }

  int maiorValor = matriz[0][0];
  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < matriz[i].length; j++) {
      if (matriz[i][j] > maiorValor) {
        maiorValor = matriz[i][j];
      }
    }
  }

  print("\nO maior valor encontrado na matriz gerada é $maiorValor");

  for (int i = 0; i < matriz.length; i++) {
    matriz[i][i] *= maiorValor;
  }

  print("\nMatriz 5 X 5 resultante:");
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write("${matriz[i][j]}\t");
    }
    print("");
  }
}