import 'dart:io';

void main() {
  print("Informe o valor 1: ");
  String? input1 = stdin.readLineSync();
  print("Informe o valor 2: ");
  String? input2 = stdin.readLineSync();
  print("Informe o valor 3: ");
  String? input3 = stdin.readLineSync();

  if (input1 != null && input2 != null && input3 != null) {
    double value1 = double.tryParse(input1) ?? 0.0;
    double value2 = double.tryParse(input2) ?? 0.0;
    double value3 = double.tryParse(input3) ?? 0.0;

    if (value1 >= value2 && value1 >= value3) {
      print("O maior número é: $value1");
    } else if (value2 >= value1 && value2 >= value3) {
      print("O maior número é: $value2");
    } else {
      print("O maior número é: $value3");
    }
  }
}