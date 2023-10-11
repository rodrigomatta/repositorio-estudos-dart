import 'dart:io';
Future<void> main() async {
  final arquivoProdutos = File('produtos.dat');
  arquivoProdutos.openSync();
  List<String> linhasProdutos = (await arquivoProdutos.readAsString()).split('\n');
  int codigo = 1;

  linhasProdutos.forEach((element) {
    codigo++;
  });
  codigo -= 2;

  String sair;
  do {
    stdout.write("cadastrar produtos para continuar digite qualquer tecla ou para sair digite 'sair': ");
    sair = stdin.readLineSync()!;

    if (sair == 'sair'){break;};

    print("cadastrar produto:\n");
    stdout.write("Informe a descrição do produto: ");
    String descricao = stdin.readLineSync()!;

    stdout.write("Informe o preço do produto: ");
    double preco = double.parse(stdin.readLineSync()!);

    String infProdutos = "$codigo,$descricao,$preco\n";
    arquivoProdutos.writeAsStringSync(infProdutos,mode: FileMode.writeOnlyAppend);
    codigo++;
  } while (true); 
}