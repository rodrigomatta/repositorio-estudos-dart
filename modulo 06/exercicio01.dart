import 'dart:io';
void main() {
  List<int> numeros = [];
  int quantidadePares = 0;
  int quantidadeImpares = 0;

  for (int i = 0; i < 6; i++) {
    stdout.write("Digite o ${i + 1}º número: ");
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }

  print("Números pares digitados:");
  for (int numero in numeros) {
    if (numero % 2 == 0) {
      print(numero);
      quantidadePares++;
    }
  }

  print("Quantidade de números pares: $quantidadePares");

  print("Números ímpares digitados:");
  for (int numero in numeros) {
    if (numero % 2 != 0) {
      print(numero);
      quantidadeImpares++;
    }
  }

  print("Quantidade de números ímpares: $quantidadeImpares");
}