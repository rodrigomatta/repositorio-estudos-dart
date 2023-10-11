import 'dart:math';
void main() {
  Random random = Random();
  int N = random.nextInt(21); // Gera um número aleatório entre 1 e 20.
  
  double resultado = calcularSequencia(N);
  if (resultado >= 0) {
    print("O valor da sequência S para N=$N é: ${resultado.toStringAsFixed(2)}");
  } else {
    print("Erro: N deve ser maior ou igual a 1");
  }
}

double calcularSequencia(int N) {
  if (N < 1) {
    return -1; 
  }

  double S = 0.0;

  for (int i = 1; i <= N; i++) {
    S += 1 / i;
  }
  return S;
}
