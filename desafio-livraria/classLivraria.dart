import 'dart:convert';
import 'dart:io';

class Livro {
  late int id;
  late String titulo;
  late double preco;
  late double estrelas;
  late String autor;
  late bool eFavorito;

  Livro(this.id, this.titulo, this.preco, this.estrelas, this.autor, this.eFavorito);

  // "static" indica que a função pertence à classe em vez de uma instância específica da classe. 
  // Isso significa que a função pode ser chamada diretamente na classe, sem a necessidade de criar uma instância da classe.
  static List<Livro> lerLivrosJson(String caminhoArquivo) {
      // Cria uma instância do objeto File para acessar o diretorio.
      final arquivo = File(caminhoArquivo);

      // Verifica se o arquivo existe no sistema de arquivos.
      if (arquivo.existsSync()) {
          // Lê o conteúdo do arquivo JSON e armazena na variável jsonContent.
          String jsonContent = arquivo.readAsStringSync();
          // Decodifica o JSON para obter a lista de livros da chave 'livros'.
          List<dynamic> livrosJson = jsonDecode(jsonContent)['livros'];

          // Inicializa uma lista para armazenar objetos da classe Livro.
          List<Livro> livros = [];

          // Percorre os dados de cada livro no JSON.
          for (var livroJson in livrosJson) {
              // Extrai informações individuais do livro.
              int id = livroJson['id'];
              String titulo = livroJson['titulo'];
              double preco = livroJson['preco'];
              double estrelas = livroJson['estrelas'];
              String autor = livroJson['autor'];
              bool efavorito = livroJson['favorito'];

              // Instância da classe Livro com as informações extraídas e a adiciona à lista de livros.
              Livro livro = Livro(id, titulo, preco, estrelas, autor, efavorito);
              livros.add(livro);
          }
          // Retorna a lista de livros.
          return livros;
      } else {
          // Se o arquivo não for encontrado, lança uma exceção com uma mensagem de erro.
          throw Exception("O arquivo não foi encontrado!");
      }
  }

  void mostrarDetalhes() {
    print("----------------------------");
    print("Identificação Livro: $id");
    print("Título: $titulo");
    print("Preço: R\$ $preco");
    print("Estrelas: $estrelas");
    print("Autor: $autor");
    print("Favorito: $eFavorito");
    print("----------------------------");
  }

  static void ordenarLivrosPorID(List<Livro> livros) {
    int n = livros.length;
    for (var i = 0; i < n - 1; i++) {
      for (var j = 0; j < n - i - 1; j++) {
        if (livros[j].id > livros[j + 1].id) {
          // Troca os livros se o ID for maior
          var temp = livros[j];
          livros[j] = livros[j + 1];
          livros[j + 1] = temp;
        }
      }
    }
  }
}