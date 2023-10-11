import 'dart:math';
void main() {
  Random random = Random();
  int N = random.nextInt(101);
  double resultado = calcularSoma(N);
  print("N = $N");
  print("A soma S é igual a ${resultado.toStringAsFixed(2)}");
}

double calcularSoma(int N) {
  double soma = 0.0;
  for (int n = 1; n <= N; n++) {
    soma += (n * n + 1) / (n + 3);
  }
  return soma;
}