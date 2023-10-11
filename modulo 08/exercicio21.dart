import 'dart:io';
import 'dart:math';
void main() {
  int linhas = 10, colunas = 10;
  List<List<int>> matriz = List.generate(linhas, (i) => List.generate(colunas, (j) => Random().nextInt(51)),);
  int maiorElemento = diagonalDeCima(matriz);

  print("\nMatriz 10 X 10 gerada:");
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      stdout.write("${matriz[i][j]}\t");
    }
    print("");
  }

  print("O maior elemento acima da diagonal principal é: $maiorElemento");
}

int diagonalDeCima(List<List<int>> matriz) {
  int maiorElemento = matriz[0][1];

  for (int i = 0; i < matriz.length; i++) {
    if (i == matriz.length - 1) break;
  
    if (matriz[i][i+1] > maiorElemento) {
      maiorElemento = matriz[i][i+1];
    }
  }
  return maiorElemento;
}

bool eIgual(List<int> elemento) {
  return elemento[0] == elemento[1];
}
