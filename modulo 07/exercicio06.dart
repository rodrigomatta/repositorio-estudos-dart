import 'dart:io';
import 'dart:math';
void main() {
  int linhas = 20;
  int colunas = 10;

  List<List<int>> matriz = List.generate(linhas, (i) => List.generate(colunas, (j) => Random().nextInt(31)));
  List<int> somasColunas = List.filled(colunas, 0);

  print("\nMatriz $linhas X $colunas gerada:");
  for (int i = 0; i < linhas; i++) {
    for (int j = 0; j < colunas; j++) {
      stdout.write("${matriz[i][j]}\t");
    }
    print("");
  }

  for (int j = 0; j < colunas; j++) {
    int soma = 0;
    for (int i = 0; i < linhas; i++) {
      soma += matriz[i][j];
    }
    somasColunas[j] = soma;
  }

  for (int i = 0; i < linhas; i++) {
    for (int j = 0; j < colunas; j++) {
      matriz[i][j] *= somasColunas[j];
    }
  }

  print("\nMatriz $linhas X $colunas resultante:");
  for (int i = 0; i < linhas; i++) {
    for (int j = 0; j < colunas; j++) {
      stdout.write("${matriz[i][j]}\t");
    }
    print("");
  }
}