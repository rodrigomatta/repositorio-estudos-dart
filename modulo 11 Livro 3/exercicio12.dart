import 'dart:io';
void main() {
  String estilista = "Cod_Estilista,Nome_Estilista,Salario";
  String roupa = "Cod_Roupa,Descricao_Roupa,Cod_Estilista,Cod_Estacao,Ano";
  String estacao = "Codigo_Estacao,Nome_Estacao";

  final arquivoEstilista = File('estilista.csv').openWrite();
  final arquivoRoupa = File('roupa.csv').openWrite();
  final arquivoEstacao = File('estacao.csv').openWrite();

  arquivoEstilista.writeln(estilista);
  arquivoEstilista.close();

  arquivoRoupa.writeln(roupa);
  arquivoRoupa.close();

  arquivoEstacao.writeln(estacao);
  arquivoEstacao.close();
}