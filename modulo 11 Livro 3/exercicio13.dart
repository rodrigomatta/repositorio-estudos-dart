import 'dart:io';
Future<void> main() async {
  final arquivoEstacao = File('estacao.csv');
  arquivoEstacao.openSync();
  final arquivoEstilista = File('estilista.csv');
  arquivoEstilista.openSync();
  final arquivoRoupa = File('roupa.csv');
  arquivoRoupa.openSync();

  List<String> linhasEstacao = (await arquivoEstacao.readAsString()).split('\n');
  List<String> linhasEstilista = (await arquivoEstilista.readAsString()).split('\n');
  List<String> linhasRoupa = (await arquivoRoupa.readAsString()).split('\n');

  int codEstacao = 1;
  int codEstilista = 1;
  int codRoupa = 1;

  linhasEstacao.forEach((element) {
    codEstacao++;
  });
  codEstacao -= 2;

  linhasEstilista.forEach((element) {
    codEstilista++;
  });
  codEstilista -= 2;

  linhasRoupa.forEach((element) {
    codRoupa++;
  });
  codRoupa -= 2;

  while (true) {
    stdout.write("Digite o nome da estação a ser cadastrada (primavera-verão, outono-inverno) ou digite 'sair' para encerrar este cadastro: ");
    String? nomeEstacao = stdin.readLineSync();

    if (nomeEstacao?.toLowerCase() == 'sair') {
      break;
    }

    String estacao = "$codEstacao,$nomeEstacao\n";
    arquivoEstacao.writeAsStringSync(estacao,mode: FileMode.writeOnlyAppend);

    codEstacao++;
  }

  while (true) {
    stdout.write("Digite o nome do estilista (ou digite 'sair' para encerrar este cadastro): ");
    String? nomeEstilista = stdin.readLineSync();

    if (nomeEstilista?.toLowerCase() == 'sair') {
      break;
    }

    stdout.write("Digite o salario do estilista: ");
    double? salario = double.parse(stdin.readLineSync()!);

    String estilista = "$codEstilista,$nomeEstilista,$salario\n";
    arquivoEstilista.writeAsStringSync(estilista,mode: FileMode.writeOnlyAppend);

    codEstilista++;
  }

   while (true) {
    stdout.write("continuar cadastro? (digite qualquer coisa para continuar ou 'sair' para finalizar): ");
    String? codigoEstilistaSt = stdin.readLineSync();

    if (codigoEstilistaSt == 'sair'){
      break;
    } 

    stdout.write("Informe o código do estilista: ");
    int codigEstilista = int.parse(stdin.readLineSync()!);

    stdout.write("Informe o código da estação: ");
    int? codigEstacao = int.parse(stdin.readLineSync()!);

    if (codigEstilista <= (codEstilista -1) && codigEstacao <= (codEstacao -1)) {
      print("\nEstilista e Estação já cadastradas!");
    } else {
      print("\nEstilista e Estação ainda não cadastradas!");
      break;
    }

    stdout.write("Informe a descrição da roupa: ");
    String? descricaoRoupa = stdin.readLineSync();

    stdout.write("Informe o ano em que a roupa foi feita: ");
    String? ano = stdin.readLineSync();

    String roupa = "$codRoupa,$descricaoRoupa,$codigEstilista,$codigEstacao,$ano\n";
    arquivoRoupa.writeAsStringSync(roupa,mode: FileMode.writeOnlyAppend);

    codRoupa++;
  }

  for (int i = 1; i < linhasRoupa.length - 1; i++) {
    List<String> auxiliarEstacao = linhasEstacao[i].split(",");
    List<String> auxiliarEstilista = linhasEstilista[i].split(",");
    List<String> auxiliarRoupa = linhasRoupa[i].split(",");
    
    print("------------------------------");
    print("Codigo Roupa: ${auxiliarRoupa[2]}");
    print("Descrição da Roupa: ${auxiliarRoupa[1]}");
    print("Estação: ${auxiliarEstacao[1]}");
    print("Nome do Estilista: ${auxiliarEstilista[1]}");
    print("Salário do Estilista: ${auxiliarEstilista[2]}");
    print("------------------------------");
  }
}