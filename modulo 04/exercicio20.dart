import 'dart:io';

void main() {
  stdout.write("Informe a sua idade: ");
  double? idade = double.tryParse(stdin.readLineSync() ?? '');
  
  if (idade == null) {
    print("Valor inválido fornescido.");
    return;
  } if ( idade < 5 ) {
    print("Você é muito novo para entrar na piscina!");
  } else if (idade >= 5 && idade <= 7) {
    print("Sua categoria é infantil");
  } else if (idade >= 8 && idade <= 10) {
    print("Sua categoria é juvenil");
  } else if (idade >= 11 && idade <= 15) {
    print("Sua categoria é Adolescente");
  } else if (idade >= 16 && idade <= 30) {
    print("Sua categoria é Adulto");
  } else {
    print("Sua categoria é Sênior");
  }
}