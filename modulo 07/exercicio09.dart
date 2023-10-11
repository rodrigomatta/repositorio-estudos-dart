import 'dart:io';

void main() {
  List<List<int>> matriz = List.generate(3, (i) => List<int>.filled(3, 0));

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      stdout.write("Digite um número real para a posição ($i, $j): ");
      matriz[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  stdout.write("Digite um valor numérico para multiplicação: ");
  int valorMultiplicacao = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      matriz[i][j] *= valorMultiplicacao;
    }
  }

  print("\nMatriz resultante da multiplicação:");
   for (int i = 0; i < 3; i++) {
    String linha = matriz[i].join(', ');
    print(linha);
  }
}