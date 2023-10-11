import 'dart:io';
void main() {
  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync()!;
  List<String> palavras = frase.split(' ');
  List<String> palavrasUnicas = [];
  List<int> contagemPalavras = [];

  // Loop através das palavras e conta quantas vezes cada uma aparece
  for (String palavra in palavras) {
    // Remove pontuação e converte para minúsculas
    palavra = palavra.replaceAll(RegExp(r'[^\w\s]'), '').toLowerCase();

    int index = palavrasUnicas.indexOf(palavra);
    if (index != -1) {
      contagemPalavras[index]++;
    } else {
      palavrasUnicas.add(palavra);
      contagemPalavras.add(1);
    }
  }

  print("Contagem de palavras na frase:");
  for (int i = 0; i < palavrasUnicas.length; i++) {
    print("A palavra ${palavrasUnicas[i]} aparece ${contagemPalavras[i]} vez(es) na frase");
  }
}