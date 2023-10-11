import 'dart:io';

void main() {
  List<int> lista1 = [];
  List<int> lista2 = [];
  List<int> resultado = [];

  for (int i = 0; i < 10; i++) {
    stdout.write("Digite o valor ${i + 1} do primeiro vetor: ");
    int l1 = int.parse(stdin.readLineSync()!);
    lista1.add(l1);
  }

  for (int i = 0; i < 10; i++) {
    stdout.write("Digite o valor ${i + 1} do segundo vetor: ");
    int l2 = int.parse(stdin.readLineSync()!);
    lista2.add(l2);
  }

  for (int i = 0; i < 10; i++) {
    int vResultado = lista1[i] * lista2[i];
    resultado.add(vResultado);
  }

  print("\nLista Resultado:");
  print(resultado);
}
