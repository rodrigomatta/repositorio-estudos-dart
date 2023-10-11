import 'dart:math';

void main() {
  // Matrizes M e N com valores randômicos entre 1 e 50.
  List<List<int>> matriz1 = List.generate(3, (i) => List.generate(8, (j) => Random().nextInt(50) + 1));
  List<List<int>> matriz2 = List.generate(3, (i) => List.generate(8, (j) => Random().nextInt(50) + 1));

  print("Matriz 1:");
  for (int i = 0; i < 3; i++) {
    String linha = matriz1[i].join(', ');
    print(linha);
  }

  print("\nMatriz 2:");
  for (int i = 0; i < 3; i++) {
    String linha = matriz2[i].join(', ');
    print(linha);
  }
  
  // Soma das matrizes
  List<List<int>> somaMatriz = List.generate(3, (i) => List.generate(8, (j) => matriz1[i][j] + matriz2[i][j]));
  print("\nSoma das Matrizes:");
  for (int i = 0; i < 3; i++) {
    String linha = somaMatriz[i].join(', ');
    print(linha);
  }

  // Diferença das matrizes
  List<List<int>> diferencaMatriz = List.generate(3, (i) => List.generate(8, (j) => matriz1[i][j] - matriz2[i][j]));
  print("\nDiferença das Matrizes:");
  for (int i = 0; i < 3; i++) {
    String linha = diferencaMatriz[i].join(', ');
    print(linha);
  }
}