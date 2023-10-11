import 'dart:io';
import 'dart:math';

void main() {
  int alt = 4, larg = 5;
  List<List<int>> matriz = List.generate(alt, (i) => List.generate(larg, (j) => Random().nextInt(15)));
  // inicializa um vetor de 5 posições com zeros
  List<int> vetSomaColunas = List.filled(5, 0);
  bool exElMaiorQDez = false;

  print("\nMatriz $alt X $larg gerada:");
  for (int i = 0; i < alt; i++) {
    for (int j = 0; j < larg; j++) {
      stdout.write("${matriz[i][j]}\t");
    }
    print("");
  }

  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < matriz[i].length; j++) {
      vetSomaColunas[j] += matriz[i][j];
    }
  }

  print("");
  for (int i = 0; i < vetSomaColunas.length; i++) {
    if (vetSomaColunas[i] > 10) {
      print("Soma da coluna ${i+1}: ${vetSomaColunas[i]}");
      exElMaiorQDez = true;
    }
  }

  if (!exElMaiorQDez) {
    print("Nenhum elemento do vetor é maior que dez.");
  }
}