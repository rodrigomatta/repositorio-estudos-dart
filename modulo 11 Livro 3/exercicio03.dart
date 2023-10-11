import 'dart:io';
Future<void> main() async {
  final arquivoCli = File('clientes.csv');
  final arquivoReceb = File('recebimentos.csv');
  arquivoReceb.openSync();
  List<String> linhas = (await arquivoCli.readAsString()).split('\n');
  List<String> auxiliar = [];

  int numDoc = 1;

  while (true) {
    stdout.write("Digite o código do cliente (ou digite '0' para encerrar o cadastro): ");
    String codCli = stdin.readLineSync()!;

    if (int.parse(codCli) <= 0) {
      break;
    }

    bool existe = false;
    linhas.forEach((element) {
      auxiliar = element.split(",");
      if (auxiliar[0] == codCli) {
        existe = true;
      }
    });

    if (existe == true) {
      print("este usuario já se encontra cadastrado");
    } else {
      print("este usuario ainda não se encontra cadastrado");
    }

    stdout.write("Digite o valor do documento: ");
    double valorDoc = double.parse(stdin.readLineSync()!);

    stdout.write("Digite a data de emissão no formato AAAA-MM-DD: ");
    String dataEmissao = stdin.readLineSync()!;

    stdout.write("Digite a data de vencimento no formato AAAA-MM-DD: ");
    String dataVencimento = stdin.readLineSync()!;

    String recebimentos = "$numDoc,${valorDoc.toStringAsFixed(2)},$dataEmissao,$dataVencimento,$codCli\n";

    arquivoReceb.writeAsStringSync(recebimentos,mode: FileMode.writeOnlyAppend);
    numDoc++;
  }

  print("Cadastro encerrado. Dados gravados no arquivo'.");
}