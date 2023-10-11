import 'dart:io';

void main() {
  List<int> listaA = [];
  List<int> listaB = [];
  List<int> resultados = [];

  for (int i = 0; i < 5; i++) {
    stdout.write("Digite o valor ${i + 1} para a lista A: ");
    int valor = int.parse(stdin.readLineSync()!);
    listaA.add(valor);
  }

  for (int i = 0; i < 5; i++) {
    stdout.write("Digite o valor ${i + 1} para a lista B: ");
    int valor = int.parse(stdin.readLineSync()!);
    listaB.add(valor);
  }

  for (int i = 0; i < listaA.length; i++) {
    int resultado = listaA[i] - listaB[listaB.length - 1 - i];
    resultados.add(resultado);
  }

  for (int i = 0; i < resultados.length; i++) {
    print("${listaA[i]} - ${listaB[listaB.length - 1 - i]} = ${resultados[i]}");
  }

  print("Resultado das subtrações: $resultados");
}
