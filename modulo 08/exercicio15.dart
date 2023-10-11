import 'dart:math';
void main() {
  List<int> vetorX = List.generate(15, (_) => Random().nextInt(101));
  int quantidadePares = contarValoresPares(vetorX);

  print("VetorX: $vetorX");
  print("A quantidade de valores pares em X é: $quantidadePares");
}

int contarValoresPares(List<int> vetor) {
  int quantidadePares = 0;

  for (int numero in vetor) {
    if (numero % 2 == 0) {
      quantidadePares++;
    }
  }
  return quantidadePares;
}