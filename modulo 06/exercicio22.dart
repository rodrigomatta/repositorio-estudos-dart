import 'dart:io';

void main() {
  List<int?> listaA = [];
  List<int?> listaB = [];

  for (int i = 0; i < 10; i++) {
    stdout.write("Digite o ${i + 1}º número inteiro: ");
    int? numero = int.tryParse(stdin.readLineSync() ?? "");

    listaA.add(numero);
  }

  for (int? elemento in listaA) {
    if (elemento != null && elemento > 0) {
      listaB.add(elemento);
    }
  }

  print("\nVetor B (sem valores nulos e negativos):");
  print(listaB);
}
