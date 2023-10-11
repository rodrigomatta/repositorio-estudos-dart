import 'dart:io';

void main() {
  List<int?> lista1 = [];
  List<int?> lista2 = [];

  for (int i = 0; i < 30; i++) {
    stdout.write("Digite o ${i + 1}º número inteiro (ou deixe em branco para nulo): ");
    int? numero = int.tryParse(stdin.readLineSync() ?? "");

    if (numero != null) {
      lista1.add(numero);
    } else {
      lista1.add(null);
    }
  }

  for (int? element in lista1) {
    if (element != null) {
      lista2.add(element);
    } else {
      lista2.add(1);
    }
  }

  print("\nPrimeira lista:");
  print(lista1);

  print("\nSegunda lista (com valores nulos substituídos por 1):");
  print(lista2);
}