import 'dart:io';
void main() {
  List<String> nomesVendedores = [];
  List<int> totalVendas = [];
  List<double> percentualComissao = [];
  List<double> valoresReceber = [];

  double maiorComissao = 0;
  double menorComissao = double.infinity;
  String nomeMaiorComissao = '';
  String nomeMenorComissao = '';

  int totalVendasGeral = 0; 

  for (int i = 0; i < 10; i++) {
    stdout.write("Digite o nome do vendedor ${i + 1}: ");
    String nome = stdin.readLineSync()!.toLowerCase();
    nomesVendedores.add(nome);

    stdout.write("Digite o total de vendas do vendedor ${i + 1}: ");
    int vendas = int.parse(stdin.readLineSync()!);
    totalVendas.add(vendas);
    totalVendasGeral += vendas;

    stdout.write("Digite o percentual de comissão do vendedor ${i + 1}: ");
    double comissao = double.parse(stdin.readLineSync()!);
    percentualComissao.add(comissao);

    double valorReceber = (vendas * comissao) / 100;
    valoresReceber.add(valorReceber);

    if (valorReceber > maiorComissao) {
      maiorComissao = valorReceber;
      nomeMaiorComissao = nome;
    }
    if (valorReceber < menorComissao) {
      menorComissao = valorReceber;
      nomeMenorComissao = nome;
    }
  }

  print("\nRelatório:");
  for (int i = 0; i < 10; i++) {
    print("${nomesVendedores[i]} vai receber ${valoresReceber[i].toStringAsFixed(2)}% de comissão.");
  }

  print("\nO total de vendas de todos os vendedores foi de $totalVendasGeral vendas");

  print("Maior valor a receber: $nomeMaiorComissao irá receber ${maiorComissao.toStringAsFixed(2)}% de comissão");
  print("Menor valor a receber: $nomeMenorComissao irá receber ${menorComissao.toStringAsFixed(2)}% de comissão");
}