import 'dart:math';

void main() {
  double media = 0;
  int somaElementosPares = 0, quantidadeElementosPares = 0;
  List<List<int>> matriz = List.generate(2, (i) => List.generate(4, (j) => Random().nextInt(51)));

  print("Resultado Matriz 2 X 4: ");
  for (int i = 0; i < 2; i++) {
    // Une os elementos da linha em uma string
    String linha = matriz[i].join(', ');
    print(linha);
  }

  print("Quantidade de elementos entre 12 e 20 em cada linha:");

  for (int i = 0; i < matriz.length; i++) {
    int qtdElementos = 0;
    for (int j = 0; j < 4; j++) {
      if (matriz[i][j] >= 12 && matriz[i][j] <= 20) {
        qtdElementos++;
      }
    }
    print("A Linha ${i + 1} possui $qtdElementos elemento(s)");
  }

  //média elementos pares.
  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 4; j++) {
      if (matriz[i][j] % 2 == 0) {
        somaElementosPares += matriz[i][j];
        quantidadeElementosPares++;
      }
    }
  }

  if (quantidadeElementosPares > 0) {
    media = somaElementosPares / quantidadeElementosPares;
  }
  print("A média dos elementos pares da matriz é ${media.toStringAsFixed(2)}");
}
