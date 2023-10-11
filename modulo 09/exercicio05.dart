import 'dart:io';
void main() {
  stdout.write("Digite a primeira cadeia de caracteres: ");
  String str1 = stdin.readLineSync()!;
  stdout.write("Digite a segunda cadeia de caracteres: ");
  String str2 = stdin.readLineSync()!;

  if (permutacoes(str1, str2)) {
    print("primeira cadeia: $str1");
    print("segunda cadeia: $str2");
    print("A primeira cadeia é uma permutação da segunda cadeia.");
  } else {
     print("primeira cadeia:$str1");
    print("segunda cadeia:$str2");
    print("A primeira cadeia não é uma permutação da segunda cadeia.");
  }
}

bool permutacoes(String str1, String str2) {
  if (str1.length != str2.length) {
    return false;
  }

  List<String> classStr1 = str1.split('')..sort();
  List<String> classStr2 = str2.split('')..sort();

  for (int i = 0; i < classStr1.length; i++) {
    if (classStr1[i] != classStr2[i]) {
      return false;
    }
  }
  return true;
}