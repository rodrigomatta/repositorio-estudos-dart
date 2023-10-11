import 'dart:io';

Future<void> main() async {
  String produtos = "Codigo,Descricao,Preco\n";
  final arquivoProdutos = File('produtos.dat');
  List<String> linhasProdutos = (await arquivoProdutos.readAsString()).split('\n');
  arquivoProdutos.writeAsString('');
  arquivoProdutos.writeAsStringSync(produtos, mode: FileMode.append);

  stdout.write("Informe o percentual de desconto: ");
  double desconto = double.parse(stdin.readLineSync()!);

  stdout.write("Informe o valor inicial a ser procurado: ");
  double valorInicial = double.parse(stdin.readLineSync()!);

  stdout.write("Informe o valor final a ser procurado: ");
  double valorFinal = double.parse(stdin.readLineSync()!);

  print("Produtos cadastrados que receberam desconto:");
  bool isTrue = false;

  for (int i = 1; i < linhasProdutos.length -1; i++) {
    List<String> auxiliarProduto = linhasProdutos[i].split(",");
    double precoProduto = double.tryParse(auxiliarProduto[2]) ?? 0;

    if (valorInicial <= precoProduto && precoProduto <= valorFinal) {
      isTrue = true;
      print("--------Antes do Desconto--------");
      print("Código do Produto: ${auxiliarProduto[0]}");
      print("Descrição do produto: ${auxiliarProduto[1]}");
      print("Valor do Produto: R\$ ${precoProduto.toStringAsFixed(2)}"); 
      print("--------------------------------");

      precoProduto -= (precoProduto*(desconto / 100));
      
      print("--------Depois do Desconto--------");
      print("Código do Produto: ${auxiliarProduto[0]}");
      print("Descrição do produto: ${auxiliarProduto[1]}");
      print("Valor do Produto: R\$ ${precoProduto.toStringAsFixed(2)}");
      print("---------------------------------");
    }
    
    String infProdutos = "${auxiliarProduto[0]},${auxiliarProduto[1]},${precoProduto.toStringAsFixed(2)}\n";
    arquivoProdutos.writeAsStringSync(infProdutos, mode: FileMode.append);
  }

  if (!isTrue) {
    print("Nenhum produto cadastrado recebeu desconto!");
  }
}
