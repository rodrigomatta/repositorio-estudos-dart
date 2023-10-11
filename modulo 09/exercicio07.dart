import 'dart:io';
void main() {
  stdout.write("Digite uma frase: ");
  String frase = (stdin.readLineSync() ?? "").replaceAll(" ", "").toLowerCase();

  // Cria um conjunto (Set) para armazenar as letras únicas;
  // ex Set<int> numeros = {1, 2, 3, 4, 5};
  // Verificando se um elemento está no Set
  //bool contemDois = numeros.contains(2);
  Set<String> letras = Set();

  for (int i = 0; i < frase.length; i++) {
    letras.add(frase[i]);
  }

  print("A frase contém ${letras.length} letras diferentes.");
}
