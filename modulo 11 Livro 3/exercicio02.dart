import 'dart:io';
Future<void> main() async {
  final arquivo = File('clientes.csv');
  arquivo.openSync();
  List<String> linhas = (await arquivo.readAsString()).split('\n');
  int codCli = 1;

  linhas.forEach((element) {
    codCli++;
  });
  codCli -= 2;

  while (true) {
    stdout.write("Digite o nome do cliente (ou digite 'sair' para encerrar o cadastro): ");
    String? nome = stdin.readLineSync();

    if (nome?.toLowerCase() == 'sair') {
      break;
    }

    stdout.write("Digite o endereço do cliente: ");
    String? endereco = stdin.readLineSync();

    String cliente = "$codCli,$nome,$endereco\n";
    arquivo.writeAsStringSync(cliente,mode: FileMode.writeOnlyAppend);

    codCli++;
  }
}