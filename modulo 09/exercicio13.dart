import 'dart:io';
void main() {
  stdout.write("Digite uma cadeia de caracteres: ");
  String cadeiaRepeticao = stdin.readLineSync()!;
  
  stdout.write("Digite o número de repetições (limite máximo 5): ");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero <= 5) {
    String novaCadeia = '';
    for (int i = 0; i < numero; i++) {
      novaCadeia += cadeiaRepeticao;
      if (i < numero - 1) {
        novaCadeia += ' ';
      }
    }
    print("Nova cadeia: $novaCadeia");
  } else {
    print("O número de repetições deve ser no máximo 5.");
  }
}