import 'dart:io';

void main() {
  stdout.write("Informe o preço do produto: ");
  double? preco = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write("Informe o codigo de origem do produto: ");
  int? codigo = int.tryParse(stdin.readLineSync() ?? '');
  
  if (codigo == null || preco == null) {
    print("Valor inválido fornescido.");
    return;
  } if ( codigo == 1 ) {print("O preço do produto é de R\$ $preco e sua procedencia é do Sul");
  } else if (codigo == 2) {print("O preço do produto é de R\$ $preco e sua procedencia é do Norte");
  } else if (codigo == 3) {print("O preço do produto é de R\$ $preco e sua procedencia é do Leste");
  } else if (codigo == 4) {print("O preço do produto é de R\$ $preco e sua procedencia é do Oeste");
  } else if (codigo == 5 || codigo == 6) {print("O preço do produto é de R\$ $preco e sua procedencia é do Nordeste");
  } else if (codigo >= 7 && codigo <= 9) {print("O preço do produto é de R\$ $preco e sua procedencia é do Sudeste");
  } else if (codigo >= 10 && codigo <= 20) {print("O preço do produto é de R\$ $preco e sua procedencia é do Centro-Oeste");
  } else if (codigo >= 21 && codigo <= 30) {print("O preço do produto é de R\$ $preco e sua procedencia é do Nordeste");
  } else {print("Este código não foi encontrado em nossa base de dados!");}
}