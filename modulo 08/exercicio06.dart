import 'dart:math';
void main() {
  final random = Random();
  // Intervalo [1.50, 1.90)
  double altura = 1.5 + random.nextDouble() * 0.4;

  List<String> generos = ['homem', 'mulher'];
  String genero = generos[random.nextInt(generos.length)];

  try {
    double pesoIdeal = calcularPesoIdeal(altura, genero);
    print("Altura: ${altura.toStringAsFixed(2)} metros");
    print("Gênero: $genero");
    print("O peso ideal é ${pesoIdeal.toStringAsFixed(2)} kg.");
  } catch (e) {
    print(e);
  }
}

double calcularPesoIdeal(double alt, String sexo) {
  double pesoIdeal;

  if (sexo.toLowerCase() == 'homem') {
    pesoIdeal = 72.7 * alt - 58;
  } else if (sexo.toLowerCase() == 'mulher') {
    pesoIdeal = 62.1 * alt - 44.7;
  } else {
    throw Exception("Sexo desconhecido. Use 'homem' ou 'mulher'.");
  }
  return pesoIdeal;
}