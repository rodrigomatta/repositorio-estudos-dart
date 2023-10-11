import 'dart:math';

void main() {
  // Criar uma matriz 3 X 5 com a geração de números aleatórios entre 0 e 50
  List<List<int>> matriz = List.generate(3, (i) => List.generate(5, (j) => Random().nextInt(51)));

  print("Resultado Matriz 3 X 5: ");

  for (int i = 0; i < 3; i++) {
    // Une os elementos da linha em uma string
    String linha = matriz[i].join(', ');
    print(linha);
  }

  int quantidade = 0;

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 5; j++) {
      if (matriz[i][j] >= 15 && matriz[i][j] <= 20) {
        quantidade++;
      }
    }
  }
  print("Quantidade de elementos entre 15 e 20: $quantidade");
}
