import 'dart:io';
Future<void> main() async {
  final arquivoProdutos = File('produtos.dat');
  List<String> linhasProdutos = (await arquivoProdutos.readAsString()).split('\n');

  print("Produtos cadastrados que começam com a letra M:");
  for (int i = 1; i < linhasProdutos.length - 1; i++) {
    List<String> auxiliarProduto = linhasProdutos[i].split(",");

    if (auxiliarProduto[1][0] == 'm' || auxiliarProduto[1][0] == 'M') {
      print("------------------------------");
      print("Código do Produto: ${auxiliarProduto[0]}");
      print("Descrição do produto: ${auxiliarProduto[1]}");
      print("Valor do Produto: R\$ ${auxiliarProduto[2]}");
      print("------------------------------");
    }
  }
}