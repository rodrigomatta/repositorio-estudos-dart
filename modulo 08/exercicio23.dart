import 'dart:io';
void main() {
  stdout.write("Digite o valor do primeiro lado do triângulo: ");
  double lado1 = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o valor do segundo lado do triângulo: ");
  double lado2 = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o valor do terceiro lado do triângulo: ");
  double lado3 = double.parse(stdin.readLineSync()!);

  if (isTriangulo(lado1, lado2, lado3)) {
    tipoTriangulo(lado1, lado2, lado3);
  } else {
    print("Os lados não formam um triângulo.");
  }
}

bool isTriangulo(double a, double b, double c) {
  if (a > 0 && b > 0 && c > 0) {
    if (a + b > c && a + c > b && b + c > a) {
      return true;
    }
  }
  return false;
}

void tipoTriangulo(double lado1, double lado2, double lado3) {
  if (lado1 == lado2 && lado2 == lado3) {
    print("Esta combinação forma um triângulo equilátero.");
  } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
    print("Esta combinação forma um triângulo isósceles.");
  } else {
    print("Esta combinação forma um triângulo escaleno.");
  }
}