import 'dart:io';

Future<void> main() async {
  final arquivoProdutos = File('produtos.dat');
  List<String> linhasProdutos = (await arquivoProdutos.readAsString()).split('\n');

  stdout.write("Informe uma letra para a busca dos produtos: ");
  String letra = stdin.readLineSync()!;

  stdout.write("Informe o valor inicial a ser procurado: ");
  double valorInicial = double.parse(stdin.readLineSync()!);

  stdout.write("Informe o valor final a ser procurado: ");
  double valorFinal = double.parse(stdin.readLineSync()!);

  print("Produtos cadastrados:");
  bool isTrue = false;

  for (int i = 1; i < linhasProdutos.length -1; i++) {
    List<String> auxiliarProduto = linhasProdutos[i].split(",");
    double precoProduto = double.tryParse(auxiliarProduto[2]) ?? 0;

    if (letra == auxiliarProduto[1][0] && valorInicial <= precoProduto && precoProduto <= valorFinal) {
      isTrue = true;
      print("------------------------------");
      print("Código do Produto: ${auxiliarProduto[0]}");
      print("Descrição do produto: ${auxiliarProduto[1]}");
      print("Valor do Produto: R\$ ${auxiliarProduto[2]}");
      print("------------------------------");
    }
  }

  if (!isTrue) {
    print("Nenhum produto encontrado com as descrições fornecidas!");
  }
}
