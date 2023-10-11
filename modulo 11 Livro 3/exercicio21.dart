import 'dart:io';
Future<void> main() async {
  String produtos = "Codigo,Descricao,Preco\n";
  final arquivoProdutos = File('produtos.dat');
  List<String> linhasProdutos = (await arquivoProdutos.readAsString()).split('\n');
  arquivoProdutos.writeAsString('');
  arquivoProdutos.writeAsStringSync(produtos, mode: FileMode.append);

  stdout.write("Informe a descrição do produto a ser excluido do arquivo: ");
  String descricao = stdin.readLineSync()!;

  for (int i = 1; i < linhasProdutos.length -1; i++) {
    List<String> auxiliarProduto = linhasProdutos[i].split(",");
    double precoProduto = double.tryParse(auxiliarProduto[2]) ?? 0;

    if (descricao != auxiliarProduto[1]) {
      String infProdutos = "${auxiliarProduto[0]},${auxiliarProduto[1]},${precoProduto.toStringAsFixed(2)}\n";
      arquivoProdutos.writeAsStringSync(infProdutos, mode: FileMode.append);
    }
  }
}