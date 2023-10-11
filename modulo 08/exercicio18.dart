void main() {
  int cont = 0;
  int numero = 100;

  print("\nOs dez primeiros números primos acima de 100 são: ");

  while (cont < 10) {
    if (isPrimo(numero)) {
      print(numero);
      cont++;
    }
    numero++;
  }
}

bool isPrimo(int numero) {
  if (numero < 2) {
    return false;
  } else {
    for (int n = 2; n < numero; n++) {
      if (numero % n == 0) {
        return false;
      }
    }
    return true;
  }
}
