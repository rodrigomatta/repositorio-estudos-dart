import 'dart:io';

void main() {
  List<int> numeros = [];
  int quantidadePrimos = 0;

  bool isPrimo(int numero) {
    if (numero < 2) {
      return false;
    } else {
      for (int n = 2; n < numero; n++) {
        if (numero % n == 0) {
          return false;
        }
      }
      return true;
    }
  }

  for (int i = 0; i < 10; i++) {
    stdout.write("Digite o ${i + 1}º número: ");
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }

  for (int numero in numeros) {
    if (isPrimo(numero)) {
      quantidadePrimos++;
    }
  }

  print("Quantidade de números primos é de $quantidadePrimos números");
}
