import 'dart:io';
void main() {
  List<double> precosProdutos = List<double>.filled(10, 0.0);
  List<List<int>> quantidadeArmazens = List.generate(5, (i) => List<int>.filled(10, 0));
  List<int> quantidadeTotalProdutos = List<int>.filled(10, 0);
  List<double> custoArmazens = List<double>.filled(5, 0.0);
  int maiorEstoqueArmazem = 0, maiorEstoqueProduto = 0;
  int menorEstoque = quantidadeArmazens[0][0];

  for (int i = 0; i < 10; i++) {
   stdout.write("Informe o preço do produto ${i + 1}: ");
    precosProdutos[i] = double.parse(stdin.readLineSync()!);
  }

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 10; j++) {
      stdout.write("Informe a quantidade do produto ${j + 1} no armazém ${i + 1}:");
      quantidadeArmazens[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  // quantidade total de cada produto em todos os armazéns
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 10; j++) {
      quantidadeTotalProdutos[j] += quantidadeArmazens[i][j];
    }
  }

  // custo de cada armazém
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 10; j++) {
      custoArmazens[i] += quantidadeArmazens[i][j] * precosProdutos[j];
    }
  }

  // Encontra o produto com maior estoque em um único armazém
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 10; j++) {
      if (quantidadeArmazens[i][j] > quantidadeArmazens[maiorEstoqueArmazem][maiorEstoqueProduto]) {
        maiorEstoqueArmazem = i;
        maiorEstoqueProduto = j;
      }
    }
  }

  // Encontrar o menor estoque armazenado
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 10; j++) {
      if (quantidadeArmazens[i][j] < menorEstoque) {
        menorEstoque = quantidadeArmazens[i][j];
      }
    }
  }

  print("\nQuantidade de produtos estocados em cada armazém:");
  for (int i = 0; i < 5; i++) {
    print("Armazém ${i + 1}: ${quantidadeArmazens[i]}");
  }

  print("\nQuantidade de cada um dos produtos estocados em todos os armazéns juntos:");
  for (int j = 0; j < 10; j++) {
    print("Produto ${j + 1}: ${quantidadeTotalProdutos[j]}");
  }

  print("\nPreço do produto com maior estoque em um único armazém: R\$${precosProdutos[maiorEstoqueProduto].toStringAsFixed(2)}");
  print("\nMenor estoque armazenado: $menorEstoque produtos");
  print("\nCusto por cada armazém:");
  for (int i = 0; i < 5; i++) {
    print("Armazém ${i + 1}: R\$${custoArmazens[i].toStringAsFixed(2)}");
  }
}
