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
      print("\nLIVROS EM ORDEM AUFABETICA DE AUTORES: \n");
      for (var i = 0; i < livros.length - 1; i++) {
        for (var j = i + 1; j < livros.length; j++) {
          if (livros[i].autor.compareTo(livros[j].autor) > 0) {
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
      break;
    default:
      print("Opção inválida. Digite uma opção válida!");
      break;
  }
}
