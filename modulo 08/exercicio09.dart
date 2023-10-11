import 'dart:math';
void main() {
  Random random = Random();
  int numero = random.nextInt(21); // Gera um número aleatório entre 1 e 20.
  try {
    int resultado = somaDosDivisores(numero);
    print("A soma dos divisores de $numero é $resultado.");
  } catch (e) {
    print(e);
  }
}

int somaDosDivisores(int numero) {
  if (numero <= 0) {
    throw ArgumentError("O número deve ser inteiro e positivo.");
  }

  int soma = 0;

  for (int i = 1; i <= numero; i++) {
    if (numero % i == 0) {
      soma += i;
    }
  }
  return soma;
}