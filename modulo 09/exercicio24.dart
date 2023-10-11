import 'dart:io';
void main() {
  stdout.write("Digite um verbo regular terminado em ER: ");
  String verbo = stdin.readLineSync()!;

  if (verbo.endsWith("er")) {
    String verboER = verbo.substring(0, verbo.length - 2);

    print("Eu $verboER""o");
    print("Tu $verboER""es");
    print("Ele $verboER""e");
    print("Ela $verboER""e");
    print("Nós $verboER""emos");
    print("Vós $verboER""eis");
    print("Eles $verboER""em");
    print("Elas $verboER""em");
  } else {
    print("O verbo fornescido não é terminado em ER!");
  }
}