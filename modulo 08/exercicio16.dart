import 'dart:math';
void main() {
  Random random = Random();
  List<int> vetor = [];

  for (int i = 0; i < 20; i++) {
    vetor.add(random.nextInt(101));
  }

  int resultado = calcularSoma(vetor);
  print("Valores gerados no vetor: $vetor");
  print("A soma dos elementos do vetor é: $resultado");
}

int calcularSoma(List<int> vetor) {
  int soma = 0;
  for (int i = 0; i < vetor.length; i++) {
    soma += vetor[i];
  }
  return soma;
}