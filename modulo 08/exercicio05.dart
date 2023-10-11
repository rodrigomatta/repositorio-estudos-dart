import 'dart:math';
void main() {
  // Gera um número inteiro aleatório entre -100 e 100.
  Random random = Random();
  int numero = random.nextInt(201) - 100;

  verificarPositivoOuNegativo(numero);
}

void verificarPositivoOuNegativo(int valor) {
  if (valor > 0) {
    print("O valor $valor é positivo.");
  } else if (valor < 0) {
    print("O valor $valor é negativo.");
  } else {
    print("O valor $valor é zero.");
  }
}
