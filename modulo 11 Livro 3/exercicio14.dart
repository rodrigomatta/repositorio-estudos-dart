import 'dart:io';
Future<void> main() async {
  int escolha;

  do {
    print("Menu: ");
    print("1. Criar");
    print("2. Incluir");
    print("3. Mostrar");
    print("4. Sair");
    stdout.write("Digite a opção desejada: ");
    escolha = int.parse(stdin.readLineSync()!);

    switch (escolha) {
      case (1):
        String escola = "Numero,Nome,Nota1,Nota2\n";
        final arquivoEscola = File('escola.csv');
        arquivoEscola.openSync();
        arquivoEscola.writeAsStringSync('');
        arquivoEscola.writeAsStringSync(escola,mode: FileMode.writeOnlyAppend);
        print("arquivo criado com sucesso!");

      break;
      case (2):
        final arquivoEscola = File('escola.csv');
        arquivoEscola.openSync();
        List<String> linhasEscola = (await arquivoEscola.readAsString()).split('\n');
        List<String> auxiliar = [];

        print("cadastrar aluno:\n");
        stdout.write("Informe o numero: ");
        int numero = int.parse(stdin.readLineSync()!);

        bool validador = false;

        linhasEscola.forEach((element) {
          auxiliar = element.split(",");
          if (auxiliar[0] == numero) {
            print("este numero já foi cadastrado, cadastre outro");
            validador = true;
          }
        });

        if (validador == true) {
          break;
        }

        stdout.write("Informe o nome: ");
        String nome = stdin.readLineSync()!;

        stdout.write("Informe a nota 1: ");
        double nota1 = double.parse(stdin.readLineSync()!);

        stdout.write("Informe a nota 2: ");
        double nota2 = double.parse(stdin.readLineSync()!);

        String infEscola = "$numero,$nome,$nota1,$nota2\n";
        arquivoEscola.writeAsStringSync(infEscola,mode: FileMode.writeOnlyAppend);

        print("cadastro finalizado com sucesso!");

        break;
      case (3):
        final arquivoEscola = File('escola.csv');
        arquivoEscola.openSync();
        List<String> linhasEscola = (await arquivoEscola.readAsString()).split('\n');

        for (int i = 1; i < linhasEscola.length - 1; i++) {
          List<String> auxiliarEscola = linhasEscola[i].split(",");

          double media = ((double.parse(auxiliarEscola[2]) + double.parse(auxiliarEscola[3])) / 2);
          
          print("------------------------------");
          print("Numero do Aluno: ${auxiliarEscola[0]}");
          print("Nome do Aluno: ${auxiliarEscola[1]}");
          print("Nota 1: ${auxiliarEscola[2]}");
          print("Nota 2: ${auxiliarEscola[3]}");
          print("\nMédia do Aluno ${auxiliarEscola[1]}: $media");
          print("------------------------------");
        }

        break;
      case (4):
        print("Saindo do programa!");

        break;
      default:
        print("Opção inválida");
    }
  } while (escolha != 4);
}