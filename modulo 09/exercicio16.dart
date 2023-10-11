import 'dart:io';
void main() {
  int letras = 0, numeros = 0, espacos = 0;

  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync() ?? "";

  for (int i = 0; i < frase.length; i++) {
    var car = frase[i];
    if (car.trim().isEmpty) {
      espacos++;
    } else if (car.toLowerCase() != car.toUpperCase()) {
      letras++;
    } else if (int.tryParse(car) != null) {
      numeros++;
    }
  }

  print("Letras: $letras");
  print("Números: $numeros");
  print("Espaços: $espacos");
}