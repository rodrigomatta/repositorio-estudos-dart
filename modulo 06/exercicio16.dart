import 'dart:io';

void main() {
  List<String> nomesProdutos = [];
  List<double> precosProdutos = [];
  List<String> produtosEntre50e100 = [];
  double somaPrecosSuperior100 = 0;
  int qtdInferior50 = 0, superior100 = 0;

  for (int i = 0; i < 5; i++) {
    stdout.write("Digite o nome do ${i + 1}° produto: ");
    String np = stdin.readLineSync()!.toLowerCase();
    nomesProdutos.add(np);

    stdout.write("Digite o preço do ${nomesProdutos[i]}: ");
    double pp = double.parse(stdin.readLineSync()!);
    precosProdutos.add(pp);

    if (precosProdutos[i] < 50) {
      qtdInferior50++;
    } else if (precosProdutos[i] >= 50 && precosProdutos[i] <= 100) {
      produtosEntre50e100.add(nomesProdutos[i]);
    } else if (precosProdutos[i] > 100) {
      somaPrecosSuperior100 += precosProdutos[i];
      superior100++;
    }
  }

  double mediaPrecosSuperior100 = 0;

  if (superior100 > 0) {
    mediaPrecosSuperior100 = somaPrecosSuperior100 / superior100;
  }

  print("\nA Quantidade de produtos com preço inferior a R\$ 50,00 é de $qtdInferior50 produtos");

  if (produtosEntre50e100.length > 0) {
    print("Os produtos com preço entre R\$ 50,00 e R\$ 100,00 são ${produtosEntre50e100.join(', ')}");
  } else {
    print("Não há produtos com preço entre R\$ 50,00 e R\$ 100,00.");
  }

  if (superior100 > 0) {
    print("A média dos preços dos produtos com preço superior a R\$ 100,00 é de R\$ ${mediaPrecosSuperior100.toStringAsFixed(2)}");
  } else {
    print("Não há produtos com preço superior a R\$ 100,00.");
  }
}