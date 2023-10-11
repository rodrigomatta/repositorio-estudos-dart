import 'dart:math';

void main() {
  //Cria uma matriz 6 X 3 com a geração de números aleatórios entre 0 e 50
  List<List<int>> matriz = List.generate(6, (i) => List.generate(3, (j) => Random().nextInt(51)));

  print("\nResultado Matriz 6 X 3: ");
  for (int i = 0; i < 6; i++) {
    // Une os elementos da linha em uma string
    String linha = matriz[i].join(', ');
    print(linha);
  }

  // Calcular o maior valor
  int maior = matriz[0][0];
  int linhaMaior = 0;
  int colunaMaior = 0;

  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 3; j++) {
      if (matriz[i][j] > maior) {
        maior = matriz[i][j];
        linhaMaior = i+1;
        colunaMaior = j+1;
      }
    }
  }

  // Calcular o menor valor
  int menor = matriz[0][0];
  int linhaMenor = 0;
  int colunaMenor = 0;

  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 3; j++) {
      if (matriz[i][j] < menor) {
        menor = matriz[i][j];
        linhaMenor = i+1;
        colunaMenor = j+1;
      }
    }
  }

  print("");
  print("Maior elemento: $maior (linha: $linhaMaior, coluna: $colunaMaior)");
  print("Menor elemento: $menor (linha: $linhaMenor, coluna: $colunaMenor)");
}