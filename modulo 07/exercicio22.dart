import 'dart:io';
import 'dart:math';
void main() {
  int alt = 3, larg = 4;
  int elementosPares = 0;
  int somaElementosImpares = 0;
  int somaTotalElementos = 0;
  List<List<int>> matriz = List.generate(alt, (i) => List.generate(larg, (j) => Random().nextInt(51)));

  print("\nMatriz $alt X $larg gerada:");
  for (int i = 0; i < alt; i++) {
    for (int j = 0; j < larg; j++) {
      stdout.write("${matriz[i][j]}\t");
    }
    print("");
  }

  for (int i = 0; i < matriz.length; i++) {
    for (int j = 0; j < matriz[i].length; j++) {
      int elemento = matriz[i][j];
      somaTotalElementos += elemento;

      if (elemento % 2 == 0) {
        elementosPares++;
      } else {
        somaElementosImpares += elemento;
      }
    }
  }

  double media = somaTotalElementos / (matriz.length * matriz[0].length);

  print("\nA quantidade de elementos pares existentes na matriz: $elementosPares");
  print("A Soma de todos elementos ímpares da matriz: $somaElementosImpares");
  print("A Média de todos os elementos da matriz: ${media.toStringAsFixed(2)}");
}