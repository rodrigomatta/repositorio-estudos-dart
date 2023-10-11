import 'dart:math';

void main() {
  final int linhasM = 4;
  final int colunasM = 6;
  final int linhasN = 6;
  final int colunasN = 4;

  // matrizes M e N com valores randomicos entre 1 e 50.
  List<List<int>> matrizM = List.generate(linhasM, (i) => List.generate(colunasM, (j) => Random().nextInt(31)));
  List<List<int>> matrizN = List.generate(linhasN, (i) => List.generate(colunasN, (j) => Random().nextInt(31)));
  
  print("\nMatriz M $linhasM X $colunasM: ");
  for (int i = 0; i < linhasM; i++) {
    String linha = matrizM[i].join(', ');
    print(linha);
  }

  print("\nMatriz N $linhasN X $colunasN: ");
  for (int i = 0; i < linhasN; i++) {
    String linha = matrizN[i].join(', ');
    print(linha);
  }

  if (colunasM != linhasN) {
    print("As dimensões das matrizes não são compatíveis para a multiplicação.");
    return;
  }

  int resultadoLinhasM = 0;
  int resultadoColunasN = 0;

  // M
  for (int i = 0; i < linhasM; i++) {
    int somaLinha = 0;
    for (int j = 0; j < colunasM; j++) {
      somaLinha += matrizM[i][j];
    }
    resultadoLinhasM += somaLinha;
  }

  // N
  for (int j = 0; j < colunasN; j++) {
    int somaColuna = 0;
    for (int k = 0; k < linhasN; k++) {
      somaColuna += matrizN[k][j];
    }
    resultadoColunasN += somaColuna;
  }

  int resultadoFinal = resultadoLinhasM + resultadoColunasN;

  print("\nResultado da soma das linhas de M: $resultadoLinhasM");
  print("Resultado da soma das colunas de N: $resultadoColunasN");
  print("Resultado Final: $resultadoFinal");
}