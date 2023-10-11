import 'dart:math';
void main() {
  List<int> vetor1 = vetorRandomico(10);
  List<int> vetor2 = vetorRandomico(10);
  List<int> intersecao = encontrarIntersecao(vetor1, vetor2);

  print("Vetor 1 gerado: $vetor1");
  print("Vetor 2 gerado: $vetor2");
  print("Vetor de Interseção: $intersecao");
}

List<int> encontrarIntersecao(List<int> vetor1, List<int> vetor2) {
  List<int> resultado = [];

  for (int numero in vetor1) {
    if (vetor2.contains(numero)) {
      resultado.add(numero);
    }
  }
  return resultado;
}

List<int> vetorRandomico (int tamanho) {
  Random random = Random();
  List<int> vetor = [];

  for (int i = 0; i < tamanho; i++) {
    vetor.add(random.nextInt(101));
  }
  return vetor;
}