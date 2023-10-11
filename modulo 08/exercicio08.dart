import 'dart:math';
void main() {
  Random random = Random();
  int numero = random.nextInt(21); // Gera um número aleatório entre 1 e 20.

  int resultado = calcularFatorial(numero);
  print("Número gerado: $numero");
  print("O fatorial de $numero é $resultado.");
}

int calcularFatorial(int numero) {
  if (numero == 0 || numero == 1) {
    return 1;
  } else {
    int fatorial = 1;
    for (int i = 2; i <= numero; i++) {
      fatorial *= i;
    }
    return fatorial;
  }
}