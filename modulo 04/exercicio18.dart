import 'dart:io';

void main() {
  stdout.write("Informe a sua idade: ");
  double? idade = double.tryParse(stdin.readLineSync() ?? '');
  
  if (idade == null) {
    print("Valor inválido fornescido.");
    return;
  } if ( idade < 18 ) {
    print("você é menor de idade!");
  } else {
    print("você é maior de idade!");
  }
}