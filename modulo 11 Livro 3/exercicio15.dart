import 'dart:io';
void main() {
  String produtos = "Codigo,Descricao,Preco";

  final arquivoProdutos = File('produtos.dat').openWrite();;

  arquivoProdutos.writeln(produtos);
  arquivoProdutos.close();
}