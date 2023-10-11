import 'dart:io';
void main() {
  //Listas armazenam os dados de alunos, disciplinas e matrículas.
  List<Aluno> alunos = [];
  List<Disciplina> disciplinas = [];
  List<Matricula> matriculas = [];
  // controle dos loops de cadastro
  int qtdDisciplinas = 1, qtdAlunos = 1, qtdMatriculas = 1;

  int codigo1 = 1, codigo2 = 1;
  bool sair = false;

  while (!sair) {
    print("---------------------------------------------------------------------");
    print("------ SISTEMA ESCOLAR 1.0 -------- OPÇÕES DISPONÍVEIS: -------------");
    print("------- 1 - CADASTRAR DISCIPLINAS OFERECIDAS ------------------------");
    print("------- 2 - CADASTRAR ALUNOS ----------------------------------------");
    print("------- 3 - MATRICULAR ALUNOS EM DISCIPLINAS ------------------------");
    print("------- 4 - LANÇAR NOTAS DE UM ALUNO --------------------------------");
    print("------- 5 - MOSTRAR BOLETIM DO ALUNO --------------------------------");
    print("------- 6 - MOSTRAR DADOS CADASTRADOS -------------------------------");
    print("------- 0 - SAIR ----------------------------------------------------");
    print("---------------------------------------------------------------------");

    stdout.write("Digite a opção desejada: ");
    int controle = int.parse(stdin.readLineSync()!);

    switch (controle) {
      case 1: // Cadastro de disciplinas no sistema.
        print("CADASTRO DE DISCIPLINAS:\n");
        for (int i = 0; i < qtdDisciplinas; i++) {
          stdout.write("Informe o nome da disciplina ${i + 1}: ");
          String nomeDisciplina = stdin.readLineSync() ?? "";

          stdout.write("Informe a carga horária geral da disciplina ${i + 1}: ");
          double cargaHorariaGeral = double.parse(stdin.readLineSync() ?? "0");

          stdout.write("A disciplina é prática ou não-prática?: ");
          String resposta = stdin.readLineSync()?.toLowerCase() ?? "";

          if (resposta == "prática" || resposta == "pratica") {
            stdout.write("Informe a carga horária prática da disciplina ${i + 1}: ");
            double cargaHorariaPratica = double.parse(stdin.readLineSync() ?? "0");
            // Adiciona a disciplina prática à lista.
            disciplinas.add(DisciplinaPratica(codigo1, nomeDisciplina, cargaHorariaGeral, cargaHorariaPratica));
          } else if (resposta == "não-prática" || resposta == "nao-pratica" || resposta == "nao pratica") {
            // Adiciona a disciplina não-prática à lista.
            disciplinas.add(Disciplina(codigo1, nomeDisciplina, cargaHorariaGeral));
          } else {
            print("\nValor inválido fornecido, cadastre novamente");
            i--;
          }
          codigo1++;
        }
        break;
      case 2: // Cadastro de alunos.
        print("CADASTRO ALUNOS:\n");
        for (int i = 0; i < qtdAlunos; i++) {
          stdout.write("Informe o nome do aluno ${i + 1}: ");
          String nomeAluno = stdin.readLineSync() ?? "";
  
          alunos.add(Aluno(codigo2, nomeAluno));
          codigo2++;
        }
        break;
      case 3: // Matricular alunos em disciplinas.
        print("MATRICULAR ALUNOS:\n");
        for (int i = 0; i < qtdMatriculas; i++) {
          stdout.write("Informe o nome do aluno da matrícula ${i + 1}: ");
          String nomeAluno = stdin.readLineSync() ?? "";

          // Verifica se o aluno existe na lista de alunos (retorna true ou false).
          bool alunoExiste = alunos.any((aluno) => aluno.nome == nomeAluno);

          if (alunoExiste) {
            // Percorre a lista e volta o nome do aluno.
            Aluno alunoEncontrado = alunos.firstWhere((aluno) => aluno.nome == nomeAluno);

            stdout.write("Informe o nome da disciplina da matrícula ${i + 1}: ");
            String nomeDisciplina = stdin.readLineSync() ?? "";

            // Verifica se a disciplina existe na lista de disciplinas (retorna true ou false).
            bool disciplinaExiste = disciplinas.any((disciplina) => disciplina.nome == nomeDisciplina);

            if (disciplinaExiste) {
              // Percorre a lista e volta o nome da disciplina.
              Disciplina disciplinaEncontrada = disciplinas.firstWhere((disciplina) => disciplina.nome == nomeDisciplina);

              stdout.write("Informe o ano letivo da matrícula ${i + 1}: ");
              int anoLetivo = int.parse(stdin.readLineSync() ?? "");

              // Verifica se a matrícula já foi realizada (retorna true ou false).
              bool matriculaJaRealizada = matriculas.any((matricula) =>
                  matricula.aluno == alunoEncontrado &&
                  matricula.disciplina == disciplinaEncontrada &&
                  matricula.anoLetivo == anoLetivo);

              if (matriculaJaRealizada) {
                print("\nEssa matrícula já foi realizada para o mesmo aluno, disciplina e ano anteriormente!");
              } else {
                stdout.write("Informe a série da matrícula ${i + 1}: ");
                String serie = stdin.readLineSync() ?? "";

                // Cria um novo objeto 'Matricula' e o adiciona à lista matriculas.
                matriculas.add(Matricula(alunoEncontrado, disciplinaEncontrada, anoLetivo, serie, 0, 0, 0, 0));
              }
            } else {
              print("Disciplina não encontrada!");
              i--;
            }
          } else {
            print("Aluno não encontrado!");
            i--;
          }
        }
        break;
      case 4: // Lançar notas de um aluno.
        print("LANÇAR NOTAS:\n");
        // Solicitar os códigos do aluno, disciplina, ano letivo e série
        stdout.write("Informe o código do aluno: ");
        int codAluno = int.parse(stdin.readLineSync() ?? "");

        stdout.write("Informe o código da disciplina: ");
        int codDisciplina = int.parse(stdin.readLineSync() ?? "");

        stdout.write("Informe o ano letivo: ");
        int anoLetivo = int.parse(stdin.readLineSync() ?? "");

        stdout.write("Informe a série: ");
        String serie = stdin.readLineSync() ?? "";

        // Verifica se a matrícula existe com base nos códigos de aluno, disciplina, ano letivo e série
        bool matriculaEncontrada = matriculas.any((matricula) =>
            matricula.aluno.codigo == codAluno &&
            matricula.disciplina.codigo == codDisciplina &&
            matricula.anoLetivo == anoLetivo &&
            matricula.serie == serie);

        if (matriculaEncontrada) {
          stdout.write("Informe o bimestre (opções 1 ao 4): ");
          int bimestre = int.parse(stdin.readLineSync() ?? "");

          stdout.write(
              "Digite a nota correspondente para o bimestre $bimestre: ");
          double nota = double.parse(stdin.readLineSync() ?? "");

          // Encontra o índice da matrícula para atualizar as notas.
          int indiceMatricula = matriculas.indexWhere((matricula) =>
              matricula.aluno.codigo == codAluno &&
              matricula.disciplina.codigo == codDisciplina &&
              matricula.anoLetivo == anoLetivo &&
              matricula.serie == serie);

          switch (bimestre) {
            case 1:
              matriculas[indiceMatricula].nota1Bim = nota;
              break;
            case 2:
              matriculas[indiceMatricula].nota2Bim = nota;
              break;
            case 3:
              matriculas[indiceMatricula].nota3Bim = nota;
              break;
            case 4:
              matriculas[indiceMatricula].nota4Bim = nota;
              break;
            default:
              print("Bimestre inválido!");
              break;
          }
        } else {
          print("Matrícula inválida!");
        }
        break; 
      case 5: // Mostrar boletim do aluno.
        print("MOSTRAR BOLETIM DO ALUNO\n");
        stdout.write("Informe o código do aluno: ");
        int codigoAluno = int.parse(stdin.readLineSync() ?? "");

        stdout.write("Informe o ano: ");
        int ano = int.parse(stdin.readLineSync() ?? "");
        
        // cria uma copia da lista matriculas
        List<Matricula> matriculados = matriculas

        // Filtra as matrículas do aluno para o ano informado.
        // 'where' percorre a lista e cria uma sequência de elementos Iterable, apenas com os elementos selecionados.
        // O resultado é convertido para uma lista 'toList'.
            .where((matricula) =>
                matricula.aluno.codigo == codigoAluno &&
                matricula.anoLetivo == ano)
            .toList();

        // Any sempre retornará valores booleanos 
        bool alunoExiste = alunos.any((aluno) => aluno.codigo == codigoAluno);

        if (alunoExiste) {
          // Recupera o aluno com base no código.
          Aluno aluno = alunos.firstWhere((aluno) => aluno.codigo == codigoAluno);
          Matricula matricula = matriculas.firstWhere((matricula) => matricula.anoLetivo == ano);

          print("-------------------------------------------  BOLETIM  --------------------------------------------------");
          print("----- Código: ${aluno.codigo}, Nome: ${aluno.nome} -----------------------------------------------------");
          print("----- Ano: ${matricula.anoLetivo}, Série: ${matricula.serie} -------------------------------------------");
          print("--------------------------------------------------------------------------------------------------------");
          print("----- Disciplina  |  CH   |  CH prática  | 1º Bim.  | 2º Bim.  | 3º Bim.  | 4º Bim. | Média ------------");

          // Loop para exibir informações da matrícula e notas.
          for (Matricula matricula in matriculados) {
            double media = matricula.calcularMedia();

            // Verifica o tipo da disciplina.
            // is verifica se o objeto matricula.disciplina é uma instância de DisciplinaPratica.
            if (matricula.disciplina is DisciplinaPratica) {
              // Disciplina prática.
              // A variável 'disciplinaPratica' recebe o objeto convertido matricula.disciplina da classe DisciplinaPratica, se a conversão for bem-sucedida.
              DisciplinaPratica disciplinaPratica = matricula.disciplina as DisciplinaPratica;
              print("----- ${matricula.disciplina.nome} | ${matricula.disciplina.cargaHorariaGeral} | ${disciplinaPratica.cargaHorariaPratica} | ${matricula.nota1Bim} | ${matricula.nota2Bim} | ${matricula.nota3Bim} | ${matricula.nota4Bim} | $media -----");
            } else {
              // Disciplina não prática.
              print("----- ${matricula.disciplina.nome} | ${matricula.disciplina.cargaHorariaGeral} | 0.0 | ${matricula.nota1Bim} | ${matricula.nota2Bim} | ${matricula.nota3Bim} | ${matricula.nota4Bim} | $media -----");
            }
          }
        } else {
          print("Matrícula Inválida!");
        }
        break;
      case 6: // Mostrar dados cadastrados.
        print("MOSTRAR DADOS:\n");
        print("Disciplinas Cadastradas:");
        for (Disciplina disciplina in disciplinas) {
          print("- Codigo: ${disciplina.codigo} Nome: ${disciplina.nome}");
        }
        print("\nAlunos Cadastrados:");
        for (Aluno aluno in alunos) {
          print("- Código: ${aluno.codigo}, Nome: ${aluno.nome}");
        }
        print("\nMatriculas Realizadas:");
        for (Matricula matricula in matriculas) {
          print("- Cód Aluno: ${matricula.aluno.codigo}, Aluno: ${matricula.aluno.nome}, ");
          print("Cod. Disciplina: ${matricula.disciplina.codigo}, Disciplina: ${matricula.disciplina.nome}, Ano: ${matricula.anoLetivo}, Serie: ${matricula.serie}");
        }
        break;
      case 0:
        print("Encerrando o sistema!");
        sair = true;
        break;
      default:
        print("Opção inválida. Tente novamente!");
        break;
    }
  }
}

class Aluno {
  // Atributos
  late int codigo; 
  late String nome; 

  // Construtor inicializa os atributos da classe.
  Aluno(this.codigo, this.nome);
}

class Disciplina {
  // Atributos
  late int codigo;
  late String nome; 
  late double cargaHorariaGeral; 

  // Construtor inicializa os atributos da classe.
  Disciplina(this.codigo, this.nome, this.cargaHorariaGeral);
}

// Herda atributos da classe mãe Disciplina.
class DisciplinaPratica extends Disciplina {
  late double cargaHorariaPratica;

  // Construtor inicializa os atributos da classe.
  // Se 'cargaHorariaPratica' não for fornecida, ela é definida como 0.
  DisciplinaPratica(int codigo, String nome, double cargaHorariaGeral, [double cargaHorariaPratica = 0])
      : super(codigo, nome, cargaHorariaGeral) {this.cargaHorariaPratica = cargaHorariaPratica;}
  // 'DisciplinaPratica' é uma subclasse de 'Disciplina' e herda seus atributos.
  // O construtor é usado para criar instâncias de 'DisciplinaPratica'.
  // Recebe os mesmos parâmetros do construtor de 'Disciplina' e
  // chama o construtor da classe base 'Disciplina' usando 'super' a qual podem ser sobrescritos.
  // Isso garante que os atributos herdados da classe base sejam inicializados
  // corretamente com os valores fornecidos ao criar uma instância de 'DisciplinaPratica'.
}

class Matricula {
  Aluno aluno; // O atributo aluno é uma referência para a classe à matrícula.
  Disciplina disciplina;  // O atributo disciplina é uma referência para a classe Disciplina.

  // Atributos
  late int anoLetivo; 
  late String serie; 
  double nota1Bim; 
  double nota2Bim;
  double nota3Bim; 
  double nota4Bim; 

  // Construtor inicializa os atributos da classe.
  Matricula(this.aluno, this.disciplina, this.anoLetivo, this.serie, this.nota1Bim, this.nota2Bim, this.nota3Bim, this.nota4Bim);

  // Método para calcular a média das disciplinas.
  double calcularMedia() {
    if (disciplina is DisciplinaPratica) {
      // Se a disciplina associada for prática, usa esta fórmula para calcular a média.
      double media = (nota1Bim + nota2Bim * 2 + nota3Bim + nota4Bim * 2) / 6;
      return media;
    } else {
      // Se a disciplina não for prática, usa esta fórmula para calcular a média.
      double media = (nota1Bim + nota2Bim + nota3Bim + nota4Bim) / 4;
      return media;
    }
  }
}