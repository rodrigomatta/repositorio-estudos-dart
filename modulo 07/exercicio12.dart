import 'dart:math';
void main() {
  List<List<int>> matriz =
      List.generate(6, (i) => List.generate(4, (j) => Random().nextInt(51)));

  print("\nMatriz 6 X 4 Gerada: ");
  for (int i = 0; i < 6; i++) {
    String linha = matriz[i].join(', ');
    print(linha);
  }

  for (int i = 0; i < 6; i++) {
    int maiorElemento = matriz[i][0];
    for (int j = 1; j < 4; j++) {
      if (matriz[i][j] > maiorElemento) {
        maiorElemento = matriz[i][j];
      }
    }

    for (int j = 0; j < 4; j++) {
      matriz[i][j] *= maiorElemento;
    }
  }

  print("\nResultado Matriz Resultante 6 X 4: ");
  for (int i = 0; i < 6; i++) {
    String linha = matriz[i].join(', ');
    print(linha);
  }
}
