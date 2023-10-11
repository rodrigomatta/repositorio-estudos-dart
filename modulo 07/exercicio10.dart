import 'dart:math';
void main() {
  // Matrizes M e N com valores randômicos entre 1 e 50.
  List<List<int>> matriz = List.generate(5, (i) => List.generate(5, (j) => Random().nextInt(50) + 1));
  int somaLinha4 = 0;
  int somaColuna2 = 0;
  int somaDiagonalPrincipal = 0;
  int somaDiagonalSecundaria = 0;
  int somaTotal = 0;

  print("Matriz:");
  for (int i = 0; i < 5; i++) {
    String linha = matriz[i].join(', ');
    print(linha);
  }

  for (int i = 0; i < 5; i++) {
    somaLinha4 += matriz[3][i]; // Linha 4
    somaColuna2 += matriz[i][1]; // Coluna 2
    somaDiagonalPrincipal += matriz[i][i]; // Diagonal principal
    somaDiagonalSecundaria += matriz[i][4 - i]; // Diagonal secundária

    for (int j = 0; j < 5; j++) {
      somaTotal += matriz[i][j]; 
    }
  }
  
  print("");
  print("Soma dos elementos da linha 4: $somaLinha4");
  print("Soma dos elementos da coluna 2: $somaColuna2");
  print("Soma dos elementos da diagonal principal: $somaDiagonalPrincipal");
  print("Soma dos elementos da diagonal secundária: $somaDiagonalSecundaria");
  print("Soma de todos os elementos da matriz: $somaTotal");
}
