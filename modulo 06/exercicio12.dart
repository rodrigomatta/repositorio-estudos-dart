import 'dart:io';

void main() {
  List<int> numeros = [];
  int soma = 0;

  for (int i = 1; i <= 5; i++) {
    stdout.write("Digite o $i° número: ");
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
    soma += numero;
  }

  stdout.write("Os números digitados foram: ");
  for (int i = 0; i < numeros.length; i++) {
    stdout.write(numeros[i]);
    if (i < numeros.length - 1) {
      stdout.write(" + ");
    } else {
      stdout.write(" = $soma\n");
    }
  }
}