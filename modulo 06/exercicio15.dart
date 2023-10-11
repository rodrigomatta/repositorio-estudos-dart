import 'dart:io';

void main() {
  List<String> nomesClientes = [];
  List<int> quantLocacoes2006 = [];

  for (int i = 0; i < 8; i++) {
    stdout.write("Digite o nome do ${i + 1}° cliente: ");
    String nc = stdin.readLineSync()!.toLowerCase();
    nomesClientes.add(nc);

    stdout.write("Digite a quantidade de DVDs locados em 2006 por ${nomesClientes[i]}: ");
    int qtd = int.parse(stdin.readLineSync()!);
    quantLocacoes2006.add(qtd);
  }

  print("\nRelatório de Locações Gratuitas:");
  print("");

  for (int i = 0; i < 8; i++) {
    int locacoesGratis = quantLocacoes2006[i] ~/ 10;
    print("${nomesClientes[i]} tem direito a $locacoesGratis locações grátis.");
  }
}
