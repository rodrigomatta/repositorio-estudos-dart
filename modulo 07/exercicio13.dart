import 'dart:math';

void main() {
  List<List<int>> matriz = List.generate(2, (i) => List.generate(3, (j) => Random().nextInt(51)));
  int elementosForaDoIntervalo = 0;

  print("\nMatriz 2 X 3 Gerada: ");
  for (int i = 0; i < 2; i++) {
    String linha = matriz[i].join(', ');
    print(linha);
  }

  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 3; j++) {
      if (matriz[i][j] <= 5 || matriz[i][j] >= 15) {
        elementosForaDoIntervalo++;
      }
    }
  }
  print("\nA quantidade de elementos fora do intervalo [5, 15] são: $elementosForaDoIntervalo");
}