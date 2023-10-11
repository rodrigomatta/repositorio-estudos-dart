import 'dart:io';

void main() {
  int idade, somaIdades = 0, contador = 0, i = 1;

  while (true) {
    stdout.write('Digite a idade $i (ou 0 para encerrar): ');
    idade = int.parse(stdin.readLineSync()!);

    if (idade == 0) {
      break; // 0 encerra o loop
    }
    somaIdades += idade;
    contador++;
    i++;
  }

  if (contador == 0) {
    print('Nenhuma idade válida foi digitada.');
  } else {
    double media = somaIdades / contador;
    print('A média das idades digitadas é de ${media.toStringAsFixed(2)} anos');
  }
}
