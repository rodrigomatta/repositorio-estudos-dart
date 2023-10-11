import 'dart:io';

void main() {
  List<int> lista = [];
  List<int> listaResultante = [];

  for (int i = 0; i < 50; i++) {
    stdout.write("Digite o ${i + 1}º número inteiro: ");
    int l = int.parse(stdin.readLineSync()!);
    lista.add(l);
  }

  for (int i = 0; i < 50; i++) {
    if (lista[i] > 0) {
      listaResultante.add(lista[i]);
    }
  }

  print("\nNúmeros positivos na lista:");
  print("\n$listaResultante");
}
