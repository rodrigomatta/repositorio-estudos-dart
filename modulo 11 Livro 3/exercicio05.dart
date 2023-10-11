import 'dart:io';

Future<void> main() async {
  final arquivoCli = File('clientes.csv');
  arquivoCli.openSync();

  List<String> linhas = (await arquivoCli.readAsString()).split('\n');
  List<String> auxiliar = [];

  stdout.write("Digite o código do cliente que será modificado: ");
  String codCli = stdin.readLineSync()!;

  int index = 0;
  linhas.forEach((element) {
    auxiliar = element.split(",");
    if (auxiliar[0] == codCli) {
      index = linhas.indexOf(element);
    }
  });

  stdout.write("Digite o nome do cliente para ser auterado: ");
  String? nome = stdin.readLineSync();

  stdout.write("Digite o endereço do cliente para ser auterado: ");
  String? endereco = stdin.readLineSync();

  String cliente = "$codCli,$nome,$endereco";
  linhas[index] = cliente;

  arquivoCli.writeAsString('');

  for (int i = 0; i < linhas.length -1; i++) {
    arquivoCli.writeAsStringSync("${linhas[i]}\n", mode: FileMode.writeOnlyAppend);
  }
}