import 'dart:math';
void main() {
  Random random = Random();
  int N = random.nextInt(21);

  try {
    int resultado = calcularSoma(N);
    print('A soma dos números de 1 a $N é $resultado');
  } catch (e) {
    print(e);
  }
}

int calcularSoma(int N) {
  if (N <= 0) {
    throw ArgumentError("N deve ser um número inteiro positivo.");
  }

  int soma = 0;
  for (int i = 1; i <= N; i++) {
    soma += i;
  }
  return soma;
}
