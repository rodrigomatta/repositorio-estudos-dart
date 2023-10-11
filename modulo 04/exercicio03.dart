import 'dart:io';

void main() {
  stdout.write("Informe o valor 1: ");
  double? value1 = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write("Informe o valor 2: ");
  double? value2 = double.tryParse(stdin.readLineSync() ?? '');

  if (value1 != null && value2 != null) {
    if (value1 > value2) {
      print("O menor valor é: $value2");
    } else {
      print("O menor valor é: $value1");
    }
  } else {
    print("Pelo menos um dos valores informados é inválido");
  }
}