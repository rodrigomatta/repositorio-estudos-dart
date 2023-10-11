import 'dart:io';

void main() {
  List<int> lista = [];

  for (int i = 0; i < 15; i++) {
    stdout.write("Digite o ${i + 1}º número: ");
    int l1 = int.parse(stdin.readLineSync()!);
    lista.add(l1);
  }

  int maior = lista[0];
  int posicaoMaior = 0;
  int menor = lista[0]; 
  int posicaoMenor = 0;

  for (int i = 1; i < 15; i++) {
    if (lista[i] > maior) {
      maior = lista[i];
      posicaoMaior = i;
    }

    if (lista[i] < menor) {
      menor = lista[i];
      posicaoMenor = i;
    }
  }

  print("Maior número: $maior, na posição $posicaoMaior");
  print("Menor número: $menor, na posição $posicaoMenor");
}