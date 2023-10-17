import 'dart:io';
import 'dart:convert';
import 'classLivraria.dart';
import 'listarLivros.dart';

void main() {
  List<Livro> livros = Livro.lerLivrosJson('livraria.json');
  bool sair = false;

  while (!sair) {
    print("---------------------------------------------------------------------------------------");
    print("-- BEM VINDO A LIVRARIA DO RODRIGO, ESCOLHA UMA DAS SEGUINTES OPÇÕES PARA CONTINUAR: --");
    print("----- 1 - LISTAR LIVROS ---------------------------------------------------------------");
    print("----- 2 - MARCAR LIVROS COMO FAVORITOS ------------------------------------------------");
    print("----- 3 - ADICIONAR LIVROS NA SACOLA --------------------------------------------------");
    print("----- 4 - VISUALIZAR ITENS NA SACOLA --------------------------------------------------");
    print("----- 5 - FECHAR PEDIDO ---------------------------------------------------------------");
    print("----- 0 - ENCERRAR O SISTEMA ----------------------------------------------------------");
    print("---------------------------------------------------------------------------------------");

    stdout.write("Digite a opção desejada: ");
    int controle = int.parse(stdin.readLineSync()!);

    switch (controle) {
      case 1: //Listar livros
        print("-------------------------------------------------------------------");
        print("-- ESCOLHA O FORMATO QUE DESEJA LISTAR OS LIVROS: -----------------");
        print("----- 1 - LISTAR LIVROS EM ORDEM ALFABÉTICA -----------------------");
        print("----- 2 - LISTAR LIVROS POR ORDEM DE PREÇO DO MAIOR PARA O MENOR --");
        print("----- 3 - LISTAR LIVROS POR ORDEM DE PREÇO DO MENOR PARA O MAIOR --");
        print("----- 4 - LISTAR LIVROS POR NOME DO AUTOR -------------------------");
        print("----- 5 - LISTAR LIVROS POR POPULARIDADE --------------------------");
        print("----- 6 - LISTAR LIVROS FAVORITOS ---------------------------------");
        print("----- 0 - ENCERRAR O SISTEMA --------------------------------------");
        print("-------------------------------------------------------------------");

        stdout.write("Digite a opção desejada: ");
        int controleLivros = int.parse(stdin.readLineSync()!);

        listarLivros(controleLivros, livros);

        break;
      case 2: // Marcar livros como favoritos.
        stdout.write("Digite o(s) ID('s) do(s) livro(s) que você deseja marcar como favorito(s), separados por espaço:");
        String input = stdin.readLineSync() ?? "";
        List<int> favoritos = input.split(' ').map((id) => int.parse(id)).toList();

        // Atualiza a lista de livros marcando os favoritos como true
        for (var i = 0; i < livros.length; i++) {
          if (favoritos.contains(livros[i].id)) {
            livros[i].eFavorito = true;
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

        break;
      case 3: // Adicionar livros a sacola.
        break;
      case 4: // Visualizar sacola.
        break;
      case 5: // Fechar pedido.
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