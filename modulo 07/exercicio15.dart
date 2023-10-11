import 'dart:io';
import 'dart:math';

void main() {
  List<List<int>> matriz = List.generate(5, (i) => List.generate(5, (j) => Random().nextInt(51)));
  List<int> somaLinhas = List.filled(5, 0);
  List<int> somaColunas = List.filled(5, 0); 

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      somaLinhas[i] += matriz[i][j];
      somaColunas[j] += matriz[i][j];
    }
  }

  print("\nMatriz 5 X 5 gerada:");
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      stdout.write("${matriz[i][j]}\t");
    }
    print("");
  }

  print("\nSoma das Linhas:");
  for (int i = 0; i < 5; i++) {
    print("Resultado soma da linha ${i+1} : ${somaLinhas[i]}");
  }

  print("\nSoma das Colunas:");
  for (int i = 0; i < 5; i++) {
    print("Resultado soma da coluna ${i+1} : ${somaColunas[i]}");
  }
}