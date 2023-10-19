import 'dart:io';
import 'classLivraria.dart';

void listarLivros(int controleLivros, List<Livro> livros) {
  switch (controleLivros) {
    case 1:
      print("\nLIVROS EM ORDEM ALFABÉTICA: \n");
      for (var i = 0; i < livros.length - 1; i++) {
        for (var j = i + 1; j < livros.length; j++) {
          // compareTo é um método String que compara duas strings alfabeticamente e retorna um valor inteiro.
          // Se o resultado for maior que zero, o título do livro na posição i vem depois do título do livro na posição j em ordem alfabética.
          if (livros[i].titulo.compareTo(livros[j].titulo) > 0) {
            var inverte = livros[i];
            livros[i] = livros[j];
            livros[j] = inverte;
          }
        }
      }

      for (var livro in livros) {
        livro.mostrarDetalhes();
      }

      break;
    case 2:
      print("\nLIVROS EM ORDEM DO MENOR PREÇO PARA O MAIOR: \n");
      for (var i = 0; i < livros.length - 1; i++) {
        for (var j = i + 1; j < livros.length; j++) {
          // compareTo é um método String que compara duas strings alfabeticamente e retorna um valor inteiro.
          // Se o resultado for menor que zero, o preço na posição i vem depois do preço na posição j em ordem alfabética.
          if (livros[i].preco.compareTo(livros[j].preco) < 0) {
            var inverte = livros[i];
            livros[i] = livros[j];
            livros[j] = inverte;
          }
        }
      }

      for (var livro in livros) {
        livro.mostrarDetalhes();
      }

      break;
    case 3:
      print("\nLIVROS EM ORDEM DO MENOR PREÇO PARA O MAIOR: \n");
      for (var i = 0; i < livros.length - 1; i++) {
        for (var j = i + 1; j < livros.length; j++) {
          // compareTo é um método String que compara duas strings alfabeticamente e retorna um valor inteiro.
          // Se o resultado for maior que zero, o preço na posição i vem depois do preço na posição j em ordem alfabética.
          if (livros[i].preco.compareTo(livros[j].preco) > 0) {
            var inverte = livros[i];
            livros[i] = livros[j];
            livros[j] = inverte;
          }
        }
      }

      for (var livro in livros) {
        livro.mostrarDetalhes();
      }

      break;
    case 4:
      print("\nLIVROS POR AUTORES: \n");
      // Lista para armazenar os nomes dos autores.
      List<String> autorUnico = [];

      for (var livro in livros) {
        if (!autorUnico.contains(livro.autor)) {
          autorUnico.add(livro.autor);
        }
      }

      for (int i = 0; i < autorUnico.length - 1; i++) {
        for (int j = i + 1; j < autorUnico.length; j++) {
          if (autorUnico[i].compareTo(autorUnico[j]) > 0) {
            String inverte = autorUnico[i];
            autorUnico[i] = autorUnico[j];
            autorUnico[j] = inverte;
          }
        }
      }

      print("Autores disponíveis:");
      print("--------------------------------");
      for (var autor in autorUnico) {
        print("${autor}\n");
      }

      stdout.write("Digite o nome do autor (da maneira como se encotra escrito) para ver seus livros cadastrados: ");
      String nomeAutor = (stdin.readLineSync() ?? "").toLowerCase();

      // Procura livros do autor selecionado e mostrar suas informações.
      bool encontrouLivros = false;
      for (var livro in livros) {
        if (livro.autor.toLowerCase() == nomeAutor) {
          livro.mostrarDetalhes(); 
          encontrouLivros = true;
        }
      }

      if (!encontrouLivros) {
        print("Não foram encontrados livros com a informação fornecida!");
      }

      break;
    case 5:
      print("\nLIVROS POR POPULARIDADE: \n");
      for (var i = 0; i < livros.length - 1; i++) {
        for (var j = i + 1; j < livros.length; j++) {
          if (livros[i].estrelas.compareTo(livros[j].estrelas) < 0) {
            var inverte = livros[i];
            livros[i] = livros[j];
            livros[j] = inverte;
          }
        }
      }

      for (var livro in livros) {
        livro.mostrarDetalhes();
      }

      break;
    case 6:
      print("\nLIVROS FAVORITOS: \n");
      bool valor = false;

      for (var livro in livros) {
          if (livro.eFavorito == true) {
          livro.mostrarDetalhes();
          valor = true;
        }
      }

      if (valor == false) {
        print("Não existe nenhum livro marcado como favorito!");
      }

      break;
    default:
      print("Opção inválida. Digite uma opção válida!");
      break;
  }
}
