import 'dart:io';
void main() {
  List<String> nomes = [];
  List<int> codigos = [];
  List<double> precos = [];

  for (int i = 0; i < 10; i++) {
    stdout.write("Digite o nome do produto ${i + 1}: ");
    String nome = stdin.readLineSync()!.toLowerCase();
    nomes.add(nome);
    
    stdout.write("Digite o código do produto ${i + 1}: ");
    int codigo = int.parse(stdin.readLineSync()!);
    codigos.add(codigo);
    
    stdout.write("Digite o preço do produto ${i + 1} em R\$: ");
    double preco = double.parse(stdin.readLineSync()!);
    precos.add(preco);
  }

  print("Relatório dos produtos que sofrerão aumento:\n");

  for (int i = 0; i < 10; i++) {
    if (codigos[i] % 2 == 0 || precos[i] > 1000) {
      double novoPreco;
      if (codigos[i] % 2 == 0 && precos[i] > 1000) {
        novoPreco = precos[i] * 1.20;
      } else if (codigos[i] % 2 == 0) {
        novoPreco = precos[i] * 1.15;
      } else {
        novoPreco = precos[i] * 1.10;
      }

      print("Nome: ${nomes[i]}");
      print("Código: ${codigos[i]}");
      print("Preço antigo: R\$ ${precos[i].toStringAsFixed(2)}");
      print("Novo preço: R\$ ${novoPreco.toStringAsFixed(2)}\n");
    }
  }
}
