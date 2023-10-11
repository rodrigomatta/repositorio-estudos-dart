import 'dart:io';

void main() {
  List<int> numeros = [];
  List<int> pares = [];
  List<int> impares = [];
  int i;

  for (i = 0; i < 10; i++) {
    stdout.write("Digite o ${i + 1} º número: ");
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }

  for (i = 0; i < 10; i++) {
    if (numeros[i] % 2 == 0) {
      pares.add(numeros[i]);
    } else {
      impares.add(numeros[i]);
    }
  }
  print("Os números pares são: $pares");
  print("Os números ímpares são: $impares");
}
