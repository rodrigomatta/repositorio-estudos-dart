import 'dart:io';

void main() {
  List<int> numeros = [];
  int somaPares = 0;
  int somaPrimos = 0;

  for (int i = 0; i < 10; i++) {
    stdout.write("Digite o ${i + 1}º número: ");
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);

    if (numero % 2 == 0) {
      // Verifica se o número é par
      somaPares += numero;
    }

    if (numero >= 2) {
      bool primo = true;
      for (int n = 2; n < numero; n++) {
        if (numero % n == 0) {
          primo = false;
          break;
        }
      }
      if (primo) {
        // Verifica se o número é primo
        somaPrimos += numero;
      }
    }
  }

  print("Soma dos números pares: $somaPares");
  print("Soma dos números primos: $somaPrimos");
}