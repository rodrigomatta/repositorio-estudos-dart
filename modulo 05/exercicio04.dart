import 'dart:io';

void main() {
  stdout.write("Informe um numero: ");
  int numero = int.parse(stdin.readLineSync()!);

   for (int i = 1; i < 11; i++) {
    int calc = numero*i;
    print("$numero x $i = $calc");
   }
}
