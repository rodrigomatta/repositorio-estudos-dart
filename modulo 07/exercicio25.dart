import 'dart:io';

void main() {
  List<List<double>> precosProdutos = List.generate(20, (i) => List.filled(5, 0.0));
  double precoMaisCaro = double.negativeInfinity;
  int produtoMaisCaro = -1, lojaProdutoMaisCaro = -1;

  for (int i = 0; i < 20; i++) {
    for (int j = 0; j < 5; j++) {
      double? precoProduto;

      do {
        stdout.write("Digite o preço do produto ${i + 1} na loja ${j + 1}: ");
        String? input = stdin.readLineSync();
        precoProduto = double.tryParse(input ?? "");
        if (precoProduto == null || precoProduto == -1.0) {
          print("Preço inválido. Tente novamente.");
        } else {
          precosProdutos[i][j] = precoProduto;
        }
      } while (precoProduto == null || precoProduto == -1.0);
    }
  }

  for (int i = 0; i < 20; i++) {
    for (int j = 0; j < 5; j++) {
      if (precosProdutos[i][j] > precoMaisCaro) {
        precoMaisCaro = precosProdutos[i][j];
        produtoMaisCaro = i;
        lojaProdutoMaisCaro = j;
      }
    }
  }

  print("O produto mais caro é o produto ${produtoMaisCaro + 1}");
  print("Ele está na loja ${lojaProdutoMaisCaro + 1}");
}
