import 'dart:io';
import 'dart:math';

void main() {
  int alt = 6, larg = 10;
  List<List<int>> matriz = List.generate(alt, (i) => List.generate(larg, (j) => Random().nextInt(51)));

  print("\nMatriz $alt X $larg gerada:");
  for (int i = 0; i < alt; i++) {
    for (int j = 0; j < larg; j++) {
      stdout.write("${matriz[i][j]}\t");
    }
    print("");
  }

  // Criar uma nova lista vazia para armazenar as somas das colunas diretamente na matriz
  matriz.add(List<int>.filled(larg, 0));

  for (int j = 0; j < larg; j++) {
    int somaColuna = 0;
    for (int i = 0; i < alt; i++) {
      somaColuna += matriz[i][j];
    }
    matriz[alt][j] = somaColuna;
  }

  print("\nResultado das somas das Colunas:");
  for (int j = 0; j < larg; j++) {
    stdout.write("${matriz[alt][j]}\t");
  }
  print("");
}