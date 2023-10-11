import 'dart:io';

void main() {
  List<int> multiplosDe2 = [];
  List<int> multiplosDe3 = [];
  List<int> multiplosDe2e3 = [];

  for (int i = 0; i < 7; i++) {
    stdout.write('Digite um número inteiro: ');
    String? entrada = stdin.readLineSync();
    
    if (entrada != null) {
      int numero = int.tryParse(entrada) ?? 0;
      if (numero % 2 == 0) {
        multiplosDe2.add(numero);
      } if (numero % 3 == 0) {
        multiplosDe3.add(numero);
      } if (numero % 2 == 0 && numero % 3 == 0) {
        multiplosDe2e3.add(numero);
      }
    } else {
      print('Número inválido. Tente novamente.');
      i--;
    }
  }

  print('Números múltiplos de 2: $multiplosDe2');
  print('Números múltiplos de 3: $multiplosDe3');
  print('Números múltiplos de 2 e 3: $multiplosDe2e3');
}
