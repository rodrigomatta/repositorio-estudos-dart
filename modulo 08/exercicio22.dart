import 'dart:io';
void main() {
  List<List<int>> matriz = List.generate(10, (_) => List<int>.filled(5, 0));
  int preencherStatus = preencherMatriz(matriz);
  if (preencherStatus == 0) {
    int soma = somaAbaixoDaSextaLinha(matriz);

    print("\nMatriz 10 X 5:");
    for (int i = 0; i < 10; i++) {
      for (int j = 0; j < 5; j++) {
        stdout.write("${matriz[i][j]}\t");
      }
      print("");
    }

    print("\nA soma dos elementos abaixo da sexta linha é: $soma");
  } else {
    print("O preenchimento da matriz não foi bem-sucedido.");
  }
}

int somaAbaixoDaSextaLinha(List<List<int>> matriz) {
  int soma = 0;
  for (int i = 6; i < 10; i++) {
    for (int j = 0; j < 5; j++) {
      soma += matriz[i][j];
    }
  }
  return soma;
}

int preencherMatriz(List<List<int>> matriz) {
  print("\nDigite os elementos da matriz (10 linhas x 5 colunas): ");
  int status = 0;

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 5; j++) {
      try {
        stdout.write("Digite o elemento da linha $i, coluna $j: ");
        matriz[i][j] = int.parse(stdin.readLineSync()!);
      } catch (e) {
        stdout.write("Erro: Insira um número válido. ");
        j--;
        status = 1; 
      }
    }
  }
  return status;
}