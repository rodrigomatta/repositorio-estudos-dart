import 'dart:io';
void main() {
  // Inicializa uma lista de funcionários e uma variável para controle de saída.
  List<Funcionario> funcionarios = [];
  bool sair = false;
  int codigoFuncionario = 1, ultimoCodigo = 1;

  while (!sair) {
    for (var funcionario in funcionarios) {
      if (funcionario.numeroFuncionario > ultimoCodigo) {
        codigoFuncionario = funcionario.numeroFuncionario;
      }
    }
    ultimoCodigo++;

    print("---------------------------------------------------------------------");
    print("------ SISTEMA DE FUNCIONARIOS 1.0 -------- OPÇÕES DISPONÍVEIS: -----");
    print("------- 1 - CADASTRAR FUNCIONARIO -----------------------------------");
    print("------- 2 - MOSTRAR BONUS MENSAL DE CADA FUNCIONÁRIO ----------------");
    print("------- 3 - EXCLUIR FUNCIONÁRIO -------------------------------------");
    print("------- 4 - ALTERAR SALÁRIO DE UM FUNCIONARIO -----------------------");
    print("------- 5 - MOSTRAR DADOS CADASTRADOS -------------------------------");
    print("------- 0 - SAIR ----------------------------------------------------");
    print("---------------------------------------------------------------------");
    
    stdout.write("Digite a opção desejada: ");
    int controle = int.parse(stdin.readLineSync()!);

    switch (controle) {
      case 1: // Cadastrar funcionários.
        while (true) {
          print("\nCADASTRAR NOVO FUNCIONÁRIO:\n");
          stdout.write("Digite o nome do funcionário (ou digite 'sair' para finalizar): ");
          String nomeFuncionario = stdin.readLineSync()!;

          if (nomeFuncionario == 'sair') {
            break;
          }

          stdout.write("Digite o cargo do funcionário: ");
          String cargoFuncionario = stdin.readLineSync()!;

          stdout.write("Digite o salário do funcionário: ");
          double salarioFuncionario = double.parse(stdin.readLineSync()!);

          // Cria uma lista de dependentes para o funcionário.
          List<Dependente> dependentesFuncionario = [];
          stdout.write("Quantos dependentes esse funcionário possui? ");
          int quantidadeDependentes = int.parse(stdin.readLineSync()!);

          // Cria um objeto Funcionario e seus dependentes, depois adiciona à lista.
          var cadastroFuncionario = Funcionario(
            numeroFuncionario: codigoFuncionario,
            nomeFuncionario: nomeFuncionario,
            cargo: cargoFuncionario,
            salario: salarioFuncionario,
          );

          for (int i = 0; i < quantidadeDependentes; i++) {
            stdout.write("Digite o nome do dependente ${i + 1}: ");
            var nomeDependente = stdin.readLineSync()!;
            dependentesFuncionario.add(
              Dependente(funcionario: cadastroFuncionario, nomeDependente: nomeDependente));
          }

          cadastroFuncionario.dependentes = dependentesFuncionario;
          funcionarios.add(cadastroFuncionario);

          print("Código gerado para o funcionario $nomeFuncionario: $codigoFuncionario");
          codigoFuncionario++;
        }
        break;

      case 2: // Mostrar bônus mensal de cada funcionário.
        for (var funcionario in funcionarios) {
          var bonusMensal = funcionario.dependentes.length * 0.02 * funcionario.salario;
          print("-----------------------------------------------------------------------------------------");
          print("O ${funcionario.nomeFuncionario} tem ${funcionario.dependentes.length} dependentes e recebe um bônus mensal de R\$${bonusMensal.toStringAsFixed(2)}.");
        }
        break;

      case 3: // Excluir funcionário.
        stdout.write("Digite o código do funcionário que deseja excluir: ");
        int codigoExcluir = int.parse(stdin.readLineSync()!);
        
        // Verifica se existe um funcionário com o código de exclusão na lista.
        bool funcionarioParaExcluir = funcionarios.any(
          (funcionario) => funcionario.numeroFuncionario == codigoExcluir,
        );

        if (funcionarioParaExcluir) {
          // Encontra o primeiro funcionário na lista com o código especificado.
          var funcionarioExcluir = funcionarios.firstWhere(
            (funcionario) => funcionario.numeroFuncionario == codigoExcluir,
          );
          
          // Exibe uma mensagem informando que o funcionário foi excluído com sucesso.
          print("Funcionário ${funcionarioExcluir.nomeFuncionario} excluído com sucesso.");
          
          // Remove os dados do funcionário da lista.
          funcionarios.remove(funcionarioExcluir);
        } else {
          print("Funcionário Inexistente!");
        }
        break;

      case 4: // Alterar salário do funcionário.
        stdout.write("Digite o código do funcionário para alterar o salário: ");
        int codigoAlterar = int.parse(stdin.readLineSync()!);

        bool encontrado = false;
        for (var funcionario in funcionarios) {
          if (funcionario.numeroFuncionario == codigoAlterar) {
            stdout.write("Digite o novo salário para ${funcionario.nomeFuncionario}: ");
            double novoSalario = double.parse(stdin.readLineSync()!);
            funcionario.salario = novoSalario;

            print("Salário de ${funcionario.nomeFuncionario} alterado com sucesso para R\$${novoSalario.toStringAsFixed(2)}.");
            encontrado = true;
            break;
          }
        }

        if (!encontrado) {
          print("Funcionário Inexistente");
        }
        break;

      case 5: // Mostrar dados cadastrados.
        stdout.write("Digite o código do funcionário para mostrar informações: ");
        int codigo = int.parse(stdin.readLineSync()!);

        bool encontrado = false;
        for (var funcionario in funcionarios) {
          if (funcionario.numeroFuncionario == codigo) {
            print("Informações do Funcionário:");
            print("Código: ${funcionario.numeroFuncionario}");
            print("Nome: ${funcionario.nomeFuncionario}");
            print("Cargo: ${funcionario.cargo}");
            print("Salário: R\$${funcionario.salario.toStringAsFixed(2)}");
            print("Dependentes:");
            for (var dependente in funcionario.dependentes) {
              print("  - ${dependente.nomeDependente}");
            }
            encontrado = true;
            break;
          }
        }

        if (!encontrado) {
          print("Funcionário Inexistente");
        }
        break;

      case 0: // Opção: Encerrar o sistema.
        print("Encerrando o sistema!");
        sair = true;
        break;

      default:
        print("Opção inválida. Tente novamente!");
        break;
    }
  }
}

class Funcionario {
  // Atributos privados da classe.
  late int _numeroFuncionario;  
  late String _nomeFuncionario; 
  late String _cargo;         
  late double _salario;       
  late List<Dependente> _dependentes = []; // Lista de dependentes do funcionário.

  // Construtor.
  Funcionario({
    // O modificador 'required' indica que os parâmetros são obrigatórios ao criar uma instância da classe.
    required int numeroFuncionario,  
    required String nomeFuncionario, 
    required String cargo,            
    required double salario, 
    // Inicializa os atributos do contrutor        
  })  : _numeroFuncionario = numeroFuncionario,  
        _nomeFuncionario = nomeFuncionario,     
        _cargo = cargo,                      
        _salario = salario;                  

  // Getters para os atributos privados da classe.
  // Permite acessar os atributos privados da classe
  int get numeroFuncionario => _numeroFuncionario; 
  String get nomeFuncionario => _nomeFuncionario;  
  String get cargo => _cargo;                    
  double get salario => _salario;                
  List<Dependente> get dependentes => _dependentes; // Permite acessar a lista de dependentes do funcionário.

  // Setters para os atributos privados da classe.
  set salario(double novoSalario) {
    _salario = novoSalario;  // Permite atualizar o salário do funcionário.
  }

  set dependentes(List<Dependente> novosDependentes) {
    _dependentes = novosDependentes;  // Permite atualizar a lista de dependentes do funcionário.
  }
}

class Dependente {
  // Atributos privados da classe.
  late Funcionario _funcionario; // Referência ao funcionário a quem o dependente está relacionado.
  late String _nomeDependente;  // Nome do dependente.

  // Construtor da classe.
  Dependente({
    // O modificador 'required' indica que os parâmetros são obrigatórios ao criar uma instância da classe.
    required Funcionario funcionario, // Funcionário ao qual o dependente está associado.
    required String nomeDependente,   // Nome do dependente.
    // Inicializa os atributos do contrutor
  })  : _funcionario = funcionario, 
        _nomeDependente = nomeDependente;

  // Getters para os atributos privados da classe.
  // Permite acessar os atributos privados da classe
  Funcionario get funcionario => _funcionario; // Acessar o funcionário relacionado.
  String get nomeDependente => _nomeDependente; 
}