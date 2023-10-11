import 'dart:io';
void main() {
  int contador = 0;
  stdout.write("Digite a cadeia de caracteres principal: ");
  String cadeia = stdin.readLineSync()!;
  
  stdout.write("Digite a subcadeia: ");
  String subcadeia = stdin.readLineSync()!;
  
  if (subcadeia.length >= cadeia.length) {
    print("\nErro! Tamanho incorreto. A subcadeia deve ser menor que a cadeia.");
    return;
  }

  for (int i = 0; i <= cadeia.length - subcadeia.length; i++) {
    if (cadeia.substring(i, i + subcadeia.length) == subcadeia) {
      contador++;
    }
  }
  
  if (contador > 0) {
    print("\nA subcadeia aparece $contador vez(es) na cadeia.");
  } else {
    print("\nA subcadeia não está contida na cadeia.");
  }
}
