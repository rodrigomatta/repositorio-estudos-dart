import 'dart:io';

Future<void> main() async {
  String produtos = "Codigo,Descricao,Preco\n";
  final arquivoProdutos = File('produtos.dat');
  List<String> linhasProdutos = (await arquivoProdutos.readAsString()).split('\n');
  arquivoProdutos.writeAsString('');
  arquivoProdutos.writeAsStringSync(produtos, mode: FileMode.append);
  
  print("Todos os produtos tiveram um aumento no preço de 15%:");
  for (int i = 1; i < linhasProdutos.length; i++) {
    List<String> auxiliarProduto = linhasProdutos[i].split(",");

    double valorProduto = double.tryParse(auxiliarProduto[2]) ?? 0;
    double aumentoQuinze = valorProduto * 0.15; 

    print("--------Antes do Aumento--------");
    print("Código do Produto: ${auxiliarProduto[0]}");
    print("Descrição do produto: ${auxiliarProduto[1]}");
    print("Valor do Produto: R\$ ${valorProduto.toStringAsFixed(2)}"); 
    print("--------------------------------");

    String infProdutos = "${auxiliarProduto[0]},${auxiliarProduto[1]},${(valorProduto + aumentoQuinze).toStringAsFixed(2)}\n";
    arquivoProdutos.writeAsStringSync(infProdutos, mode: FileMode.append);
    
    print("--------Depois do Aumento--------");
    print("Código do Produto: ${auxiliarProduto[0]}");
    print("Descrição do produto: ${auxiliarProduto[1]}");
    print("Valor do Produto: R\$ ${(valorProduto + aumentoQuinze).toStringAsFixed(2)}");
    print("---------------------------------");
  }
}
