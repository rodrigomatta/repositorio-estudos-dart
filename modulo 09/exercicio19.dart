import 'dart:io';
void main() {
  stdout.write("Digite uma frase para criptografar: ");
  String frase = stdin.readLineSync()!;
  
  String fraseCriptografada = criptografarFrase(frase);

  print("Frase criptografada: $fraseCriptografada");
}

String criptografarFrase(String frase) {
  Map<String, String> vogais = {
    'a': '1',
    'e': '2',
    'i': '3',
    'o': '4',
    'u': '5',
  };

  String fraseCriptografada = frase.splitMapJoin(RegExp(r'[aeiouAEIOU]'),
      onMatch: (match) => vogais[match.group(0)?.toLowerCase()] ?? "",
      onNonMatch: (nonMatch) => nonMatch);

  return fraseCriptografada;
}