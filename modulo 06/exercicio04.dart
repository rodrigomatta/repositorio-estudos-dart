import 'dart:io';

void main() {
  List<int> numeros = [];
  List<int> posicoes = [];

  for (int i = 0; i < 15; i++) {
    stdout.write("Digite um número inteiro para a posição $i: ");
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }

  for (int i = 0; i < numeros.length; i++) {
    if (numeros[i] == 30) {
      posicoes.add(i);
    }
  }

  if (posicoes.isNotEmpty) {
    print("Os elementos iguais a 30 estão nas localizados nas seguintes posições da lista:");
    print("posições: $posicoes");
  } else {
    print("Nenhum elemento igual a 30 foi encontrado na lista fornecida.");
  }
}