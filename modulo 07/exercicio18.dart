import 'dart:io';
import 'dart:math';
void main() {
  int count = 0, soma = 0;
  List<List<int>> matriz =
      List.generate(8, (i) => List.generate(6, (j) => Random().nextInt(51)));

  print("\nMatriz 8 X 6 gerada:");
  for (int i = 0; i < 8; i++) {
    for (int j = 0; j < 6; j++) {
      stdout.write("${matriz[i][j]}\t");
    }
    print("");
  }

  for (int i = 0; i < matriz.length; i += 2) {
    for (int j = 0; j < matriz[i].length; j++) {
      soma += matriz[i][j];
      count++;
    }
  }

  double media = soma / count;
  print('\nMédia das ${(matriz.length/2).toStringAsFixed(0)} linhas pares da matriz: ${media.toStringAsFixed(2)}');
}
