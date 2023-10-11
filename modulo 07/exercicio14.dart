import 'dart:math';

void main() {
  List<List<double>> matriz = List.generate(
    12,
    (i) => List.generate(13, (j) => (Random().nextInt(61) - 30).toDouble()),
  );

  print("\nMatriz original gerada 12 X 13:");
  for (int i = 0; i < 12; i++) {
    String linha = matriz[i].map((e) => e.toString()).join(', ');
    print(linha);
  }

  for (int i = 0; i < matriz.length; i++) {
    double maiorElementoLinha = matriz[i][0].abs();

    for (int j = 1; j < matriz[i].length; j++) {
      if (matriz[i][j].abs() > maiorElementoLinha) {
        maiorElementoLinha = matriz[i][j].abs();
      }
    }

    for (int j = 0; j < matriz[i].length; j++) {
      matriz[i][j] = matriz[i][j] / maiorElementoLinha;
    }
  }

  print("\nMatriz modificada 12 X 13 com as divisões:");
  for (int i = 0; i < 12; i++) {
    String linha = matriz[i].map((e) => e.toStringAsFixed(2)).join(', ');
    print(linha);
  }
}
