import 'dart:io';
Future<void> main() async {
  final arquivoReceb = File('recebimentos.csv');
  final arquivoCli = File('clientes.csv');

  List<String> linhasReceb = (await arquivoReceb.readAsString()).split('\n');
  List<String> linhasCli = (await arquivoCli.readAsString()).split('\n');

  stdout.write("Digite o valor inicial do recebimento desejado: ");
  double valor1 = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o valor final do recebimento desejado: ");
  double valor2 = double.parse(stdin.readLineSync()!);

  print("Recebimentos com valor entre R\$ ${valor1.toStringAsFixed(2)} e R\$ ${valor2.toStringAsFixed(2)}:");

  for (int i = 1; i < linhasReceb.length - 1; i++) {
    List<String> auxiliarReceb = linhasReceb[i].split(",");
    List<String> auxiliarCli = linhasCli[i].split(",");
    double valorDocumento = double.tryParse(auxiliarReceb[1]) ?? 0.0;

    if (valorDocumento > valor1 && valorDocumento < valor2) {
      print("------------------------------");
      print("Nome do cliente: ${auxiliarCli[1]}");
      print("Número do Documento: ${auxiliarReceb[0]}");
      print("Valor do Documento: R\$ ${auxiliarReceb[1]}");
      print("Data de Emissão: ${auxiliarReceb[2]}");
      print("Data de Vencimento: ${auxiliarReceb[3]}");
      print("------------------------------");
    }
  }
}