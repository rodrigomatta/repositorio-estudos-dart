import 'dart:io';

void main() {
  stdout.write("Informe o valor 1: ");
  double value1 = double.parse(stdin.readLineSync() ?? '');
  stdout.write("Informe o valor 2: ");
  double value2 = double.parse(stdin.readLineSync() ?? '');

  if (value1 != "" && value2 != "") {
    if (value1 > value2) {
      print("O menor valor é: $value2");
    } else {
      print("O menor valor é: $value1");
    }
  } else {
    print("Pelo menos um dos valores informados é inválido");
  }
}