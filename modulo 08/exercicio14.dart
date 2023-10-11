import 'dart:math';
void main() {
  // Gera um número inteiro aleatório entre -50 e 50.
  List<int> X = List.generate(30, (index) => Random().nextInt(101) - 50);
  List<int> A = [];
  List<int> B = [];

  int elementosProcessados = separarVetor(X, A, B);

  print("Vetor A (maiores que zero): $A");
  print("Vetor B (menores ou iguais a zero): $B");
  print("Elementos processados: $elementosProcessados");
}

int separarVetor(List<int> X, List<int> A, List<int> B) {
  int elementosProcessados = 0;
  for (int i = 0; i < X.length; i++) {
    if (X[i] > 0) {
      A.add(X[i]);
    } else {
      B.add(X[i]);
    }
    elementosProcessados++;
  }
  return elementosProcessados;
}