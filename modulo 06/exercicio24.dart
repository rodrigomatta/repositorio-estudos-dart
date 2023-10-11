import 'dart:io';

void main() {
  List<int> ListaPrimaria = [];
  List<int> ListaResultante = [];

  print("Digite os 15 números inteiros:");

  for (int i = 0; i < 15; i++) {
    stdout.write("Digite o ${i + 1}º número: ");
    int num = int.parse(stdin.readLineSync()!);
    ListaPrimaria.add(num);
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

  for (int i = 0; i < 15; i++) {
    if (isPrimo(ListaPrimaria[i])) {
      ListaResultante.add(ListaPrimaria[i]);
    }
  }

  print("\nNúmeros primos resultantes da lista digitada:");
  print(ListaResultante);
}
