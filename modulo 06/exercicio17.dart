import 'dart:io';

void main() {
  List<int> lista1 = [];
  List<int> lista2 = [];
  List<int> listaDecrescente = [];

  for (int i = 0; i < 10; i++) {
    stdout.write("Digite o valor ${i + 1} da primeira lista: ");
    int l1 = int.parse(stdin.readLineSync()!);
    lista1.add(l1);
  }

  for (int i = 0; i < 10; i++) {
    stdout.write("Digite o valor ${i + 1} da segunda lista: ");
    int l2 = int.parse(stdin.readLineSync()!);
    lista2.add(l2);
  }

  listaDecrescente.addAll(lista1);
  listaDecrescente.addAll(lista2);

  listaDecrescente.sort((a, b) => b.compareTo(a));

  print("\nLista ordenada em ordem decrescente: ");
  print(listaDecrescente);
}