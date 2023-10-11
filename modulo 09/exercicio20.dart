import 'dart:io';
void main() {
  stdout.write("Digite uma frase para criptografar: ");
  String palavra = stdin.readLineSync()!;
  String reconvertida = "";
  List<int> ascii = [];

  for (int i = 0; i < palavra.length; i++) {
    int asciiCode = palavra.codeUnitAt(i);
    ascii.add(asciiCode);
  }

  for (int asciiCode in ascii) {
    reconvertida += String.fromCharCode(asciiCode);
  }

  print("A palavra $palavra criptografada fica: $ascii");
  print("A palavra criptografada $ascii descriptografada é: $reconvertida");
}
