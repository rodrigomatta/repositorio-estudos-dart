import 'dart:io';
import 'dart:convert';
import 'classLivraria.dart';
import 'classSacola.dart';
import 'listarLivros.dart';

void main() {
  List<Livro> livros = Livro.lerLivrosJson('livraria.json');
  Sacola sacola = Sacola();
  bool sair = false;

  while (!sair) {
    print("---------------------------------------------------------------------------------------");
    print("-- BEM VINDO A LIVRARIA DO RODRIGO, ESCOLHA UMA DAS SEGUINTES OPÇÕES PARA CONTINUAR: --");
    print("----- 1 - LISTAR LIVROS ---------------------------------------------------------------");
    print("----- 2 - MARCAR LIVROS COMO FAVORITOS ------------------------------------------------");
    print("----- 3 - DESMARCAR LIVROS COMO FAVORITOS ---------------------------------------------");
    print("----- 4 - ADICIONAR LIVROS E/OU LISTA DE FAVORITOS NA SACOLA --------------------------");
    print("----- 5 - VISUALIZAR ITENS NA SACOLA --------------------------------------------------");
    print("----- 6 - EXCLUIR ITENS DA SACOLA -----------------------------------------------------");
    print("----- 7 - FECHAR PEDIDO ---------------------------------------------------------------");
    print("----- 0 - ENCERRAR O SISTEMA ----------------------------------------------------------");
    print("---------------------------------------------------------------------------------------");

    stdout.write("Digite a opção desejada: ");
    // TryParse verifica se a entrada é valida caso não for retornal null.
    // A segunda parte do operador ?? é usada para definir um valor padrão de -1 se a análise não for bem-sucedida. 
    int controle = int.tryParse(stdin.readLineSync() ?? "") ?? -1;

    switch (controle) {
      case 1: //Listar livros
        print("-------------------------------------------------------------------");
        print("-- ESCOLHA O FORMATO QUE DESEJA LISTAR OS LIVROS: -----------------");
        print("----- 1 - LISTAR LIVROS EM ORDEM ALFABÉTICA -----------------------");
        print("----- 2 - LISTAR LIVROS POR ORDEM DE PREÇO DO MAIOR PARA O MENOR --");
        print("----- 3 - LISTAR LIVROS POR ORDEM DE PREÇO DO MENOR PARA O MAIOR --");
        print("----- 4 - LISTAR LIVROS POR AUTOR ---------------------------------");
        print("----- 5 - LISTAR LIVROS POR POPULARIDADE --------------------------");
        print("----- 6 - LISTAR LIVROS FAVORITOS ---------------------------------");
        print("----- 0 - ENCERRAR O SISTEMA --------------------------------------");
        print("-------------------------------------------------------------------");

        stdout.write("Digite a opção desejada: ");
        int controleLivros = int.tryParse(stdin.readLineSync() ?? "") ?? -1;

        listarLivros(controleLivros, livros);

        break;
      case 2: // Marcar livros como favoritos.
        print("Digite o(s) ID('s) do(s) livro(s) que você deseja marcar como favorito(s), separados por vírgula:");
        print("OBS: Caso a adição seja pelo nome do livro, digite da maneira como é mostrado!\n");
        String entrada = stdin.readLineSync() ?? "";
          
        // Regex para validar a entrada.
        // ^ Início da string, \d+ um ou mais dígitos (0-9), (,\d+)* zero ou mais ocorrências de vírgula seguida por um ou mais dígitos, $ final da string.
        final RegExp regex = RegExp(r'^\d+(,\d+)*$');

        // Verifica se a string "entrada" não corresponde ao padrão definido pelo regex.
        if (!regex.hasMatch(entrada)) {
          print("Entrada inválida. Certifique-se de digitar IDs válidos separados por vírgula.");
          break;
        }

        // Converte uma string de IDs separados por vírgulas em uma lista de inteiros.
        List<int> favoritos = entrada.split(',').map((id) => int.parse(id)).toList();

        // Atualiza a lista de livros marcando os favoritos como true
        for (var i = 0; i < livros.length; i++) {
          if (favoritos.contains(livros[i].id)) {
            livros[i].eFavorito = true;
          }
        }
        
        // Função para reordenar os livros por ordem antes de gravar novamente no arquivo. 
        Livro.ordenarLivrosPorID(livros);

        // Atualiza o JSON com os novos valores
        // Cria uma lista vazia para armazenar representações em formato JSON dos objetos de livros.
        List<Map<String, dynamic>> livrosJson = [];

        // Percorre a lista de objetos livros e converte cada "livro" em um dicionário, gerando uma representação JSON de cada livro e adicionando esse "dicionário" à lista "livrosJson".
        for (var livro in livros) {
          livrosJson.add({
            'id': livro.id,
            'titulo': livro.titulo,
            'preco': livro.preco,
            'estrelas': livro.estrelas,
            'autor': livro.autor,
            'favorito': livro.eFavorito,
          });
        }

        // Cria um dicionário em formato JSON, onde a chave 'livros' contém a lista 'livrosJson'.
        Map<String, dynamic> jsonMap = {'livros': livrosJson};

        // Converte o dicionário em formato JSON em uma string JSON usando jsonEncode.
        String newJsonContent = jsonEncode(jsonMap);

        // Salva os dados no arquivo,
        final arquivo = File('livraria.json');
        arquivo.writeAsStringSync(newJsonContent);

        break;
      case 3: // Desmarcar livros como favoritos.
        listarLivros(6, livros);

        bool valor = false;

        for (var livro in livros) {
          if (livro.eFavorito == true) {
            valor = true;
          }
        }

        if (valor == true) {
          print("\nDigite o(s) ID('s) do(s) livro(s) que você deseja desmarcar como favorito(s), separados por vírgula:");
          print("OBS: Caso a remoção seja pelo nome do livro, digite da maneira como é mostrado!\n");
          String entrada = stdin.readLineSync() ?? "";
          
          // regex para validar a entrada
          final RegExp regex = RegExp(r'^\d+(,\d+)*$');

          if (!regex.hasMatch(entrada)) {
            print("Entrada inválida. Certifique-se de digitar IDs válidos separados por vírgula.");
            break;
          }

          List<int> favoritos = entrada.split(',').map((id) => int.parse(id)).toList();

          // Atualiza a lista de livros marcando os favoritos como true
          for (var i = 0; i < livros.length; i++) {
            if (favoritos.contains(livros[i].id)) {
              livros[i].eFavorito = false;
            }
          }
          
          // Função para reordenar os livros por ordem antes de gravar novamente no arquivo. 
          Livro.ordenarLivrosPorID(livros);

          // Atualiza o JSON com os novos valores
          List<Map<String, dynamic>> livrosJson = [];
          for (var livro in livros) {
            livrosJson.add({
              'id': livro.id,
              'titulo': livro.titulo,
              'preco': livro.preco,
              'estrelas': livro.estrelas,
              'autor': livro.autor,
              'favorito': livro.eFavorito,
            });
          }

          Map<String, dynamic> jsonMap = {'livros': livrosJson};
          String newJsonContent = jsonEncode(jsonMap);

          final arquivo = File('livraria.json');
          arquivo.writeAsStringSync(newJsonContent);
        } 

        break;
      case 4: // Adicionar livros a sacola.
        print("ADICIONAR LIVROS A SACOLA: ");
        bool favoritosJaAdicionados = false;

        stdout.write("\nDeseja adicionar os favoritos na sacola? (digite 1 para ADICIONAR ou qualquer valor para NÃO): ");
        int respostaFavoritos = int.tryParse(stdin.readLineSync() ?? "") ?? -1;

        if (respostaFavoritos == 1) {
          for (var livro in livros) {
            if (livro.eFavorito == true) {
              bool adicionado = sacola.adicionarItemPorId(livro.id, livros);
              if (adicionado) {
                favoritosJaAdicionados = true;
              }
            }
          }
        }

        if (!favoritosJaAdicionados) {
          print("A lista de favoritos já foi adicionada a sacola anteriormente!");
        }

        stdout.write("\nDeseja adicionar livros fora da lista de favoritos? (digite 1 para ADICIONAR ou qualquer valor para NÃO): ");
        int adicionarLivros = int.tryParse(stdin.readLineSync() ?? "") ?? -1;

        if (adicionarLivros == 1) {
          print("Digite o(s) ID('s) ou o(s) nome(s) do(s) livro(s) que deseja adicionar a sacola separados por vírgula:\n");
          print("OBS: Caso a adição seja pelo nome do livro, digite da maneira como é mostrado!");
          var idNome = stdin.readLineSync() ?? "";

          List<String> idsNomes = idNome.split(',');
          bool livroAdicionado = false;

          for (var idNome in idsNomes) {
            if (int.tryParse(idNome) != null) {
              // Se for um ID, vai tentar adicionar pelo ID.
              int id = int.parse(idNome);
              if (sacola.adicionarItemPorId(id, livros)) {
                livroAdicionado = true;
              }
            }

            // Se não for um ID, vai tentar adicionar pelo nome.
            for (var livro in livros) {
              if (idNome == livro.titulo) {
                if (sacola.adicionarItemPorNome(idNome, livros)) {
                  livroAdicionado = true;
                }
              }
            }
          }

          // Verifica se o livro foi adicionado.
          if (livroAdicionado) {
            print("Livro(s) adicionado(s) a sacola.");
          } else {
            print("Livro já adicionado a sacola anteriormente ou não encontrado.");
          }
        }

        break;
      case 5: // Visualizar sacola.
        print("\nVISUALIZAR LIVROS NA SACOLA: ");
        print("Itens na sacola: \n");
        sacola.listarItens();

        break;
      case 6: // Excluir intens da sacola.
        print("\nREMOVER LIVROS DA SACOLA: \n");

        print("ITENS ATUALMENTE NA SACOLA: ");
        sacola.listarItens();
        print("");

        if (sacola.itens.isNotEmpty) {
          print("Digite o(s) ID(s) ou o(s) nome(s) do(s) livro(s) que deseja remover da sacola separados por vírgula:\n");
          print("OBS: Caso a exclusão seja pelo nome do livro, digite da maneira como é mostrado!");
          var idNome = stdin.readLineSync() ?? "";

          List<String> idsNomes = idNome.split(',');
          bool livroRemovido = false;

          for (var idNome in idsNomes) {

            if (int.tryParse(idNome) != null) {
              // Se for um ID, vai tentar remover pelo ID.
              int id = int.parse(idNome);
              if (sacola.removerItem(id, '')) {
                livroRemovido = true;
              }
            } else {
              // Se não for um ID, vai tentar remover pelo nome.
              if (sacola.removerItem(0, idNome)) {
                livroRemovido = true;
              }
            }
          }

          // Exibe o sacola após as operações.
          sacola.exibirSacolaRestantes();

          // Verifica se algum livro foi removido.
          if (livroRemovido) {
            print("Livros(s) selecionado(s) removido(s) da sacola.");
          } else {
            print("Nenhum livro foi encontrado ou removido.");
          }
        }

        break;
      case 7: // Fechar pedido.
        print("\nFECHAR COMPRAS NA SACOLA: \n");
 
        print("ITENS ATUALMENTE NA SACOLA: ");
        sacola.listarItens();
        print("");

        stdout.write("Deseja fechar o sacola de compras agora? (digite 1 para FECHAR os itens da sacola ou qualquer valor para NÃO): ");
        int fecharSacola = int.tryParse(stdin.readLineSync() ?? "") ?? -1;
        
        if (fecharSacola == 1) {
          if (sacola.itens.isNotEmpty) {
            double precoTotal = sacola.calcularPrecoTotal();

            print("\n---------------- NOTA DE COMPRA ------------------");
            print("Quantidade de itens comprados: ${sacola.itens.length}");
            print("Preço Total dos produtos comprados: R\$ ${precoTotal.toStringAsFixed(2)}");
            print("--------------------------------------------------");
            print("Produtos Adquridos:");
            print("--------------------------------------------------");
            sacola.listarItensComprados();

            print ("\nCompras Encerradas!");
            exit(0);
          } else {
            print("Nenhum item foi adicionado na sacola para finalizar a compra!");
          }
        }

        break;
      case 0:
        print("Encerrando compras, até a próxima!");
        sair = true;
        break;
      default:
        print("Opção inválida. Digite uma opção válida!");
        break;
    }
  }
}