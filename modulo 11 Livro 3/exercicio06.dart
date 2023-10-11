import 'dart:io';
Future<void> main() async {
  final arquivoReceb = File('recebimentos.csv');
  arquivoReceb.openSync();

  List<String> linhas = (await arquivoReceb.readAsString()).split('\n');
  List<String> auxiliar = [];

  stdout.write("Digite o código do documento que será modificado: ");
  String numDoc = stdin.readLineSync()!;

  int index = 0;
  linhas.forEach((element) {
    auxiliar = element.split(",");
    if (auxiliar[0] == numDoc) {
      index = linhas.indexOf(element);
    }
  });
  stdout.write("Digite o valor do documento a ser alterado: ");
  double valorDoc = double.parse(stdin.readLineSync()!);

  stdout.write("Digite a data de emissão para ser alterada no formato AAAA-MM-DD: ");
  String dataEmissao = stdin.readLineSync()!;

  stdout.write("Digite a data de vencimento para ser alterada no formato AAAA-MM-DD: ");
  String dataVencimento = stdin.readLineSync()!;

  stdout.write("Digite o código do cliente para ser alterado: ");
  String? codCli = stdin.readLineSync();

  String recebimentos = "$numDoc,${valorDoc.toStringAsFixed(2)},$dataEmissao,$dataVencimento,$codCli";
  linhas[index] = recebimentos;

  arquivoReceb.writeAsString('');

  for (int i = 0; i < linhas.length; i++) {
    arquivoReceb.writeAsStringSync("${linhas[i]}\n", mode: FileMode.writeOnlyAppend);
  }
}