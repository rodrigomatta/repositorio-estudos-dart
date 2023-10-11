import 'dart:io';
Future<void> main() async {
  final arquivoProdutos = File('produtos.dat');
  List<String> linhasProdutos = (await arquivoProdutos.readAsString()).split('\n');

  print("Produtos com preço inferior a R\$ 15,00:");
  for (int i = 1; i < linhasProdutos.length - 1; i++) {
    List<String> auxiliarProduto = linhasProdutos[i].split(",");
    double precoProduto = double.tryParse(auxiliarProduto[2]) ?? 0;

    if (precoProduto < 15) {
      print("------------------------------");
      print("Código do Produto: ${auxiliarProduto[0]}");
      print("Descrição do produto: ${auxiliarProduto[1]}");
      print("Valor do Produto: R\$ ${auxiliarProduto[2]}");
      print("------------------------------");
    }
  }
}